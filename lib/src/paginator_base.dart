import 'package:freezed_annotation/freezed_annotation.dart';
part 'paginator_base.freezed.dart';

@freezed
class PaginatedData<T> with _$PaginatedData<T> {
  const PaginatedData._();
  factory PaginatedData(
    int page,
    int size,
    List<T> data,
    int totalRecords, {
    Uri? firstPage,
    Uri? lastPage,
    Uri? nextPage,
    Uri? previousPage,
  }) = _PaginatedData;

  factory PaginatedData.empty() => PaginatedData(0, 0, [], 0);
}

mixin Paginator<T> {
  Future<PaginatedData<T>> paginatePreviousPage(PaginatedData<T> currentData,
      Future<PaginatedData<T>> Function() delegate) async {
    if (currentData.previousPage != null && currentData.page >= 0) {
      int previousPageNumber = currentData.page - 1;
      final newPagedData = await delegate();
      if (newPagedData.page == previousPageNumber) {
        currentData = appendUpdate(currentData, newPagedData);
      }
    }
    return currentData;
  }

  Future<PaginatedData<T>> paginateNextPage(PaginatedData<T> currentData,
      Future<PaginatedData<T>> Function(Uri url) delegate) async {
    if (currentData.nextPage != null &&
        currentData.page < (currentData.totalRecords / currentData.size)) {
      int nextPageNumber = currentData.page + 1;
      final url = currentData.nextPage!;
      final newPagedData = await delegate(url);
      if (newPagedData.page == nextPageNumber) {
        currentData = appendUpdate(currentData, newPagedData);
      }
    }
    return currentData;
  }

  /// Returns a new [PaginatedData] with the data of the [other] [PaginatedData] added to the end of this [PaginatedData].
  /// Replaces the current Uris with the Uris of the [other] [PaginatedData].
  PaginatedData<T> appendUpdate(
      PaginatedData<T> currentData, PaginatedData<T> pagedData) {
    currentData.data.addAll(pagedData.data);
    currentData.copyWith(
      page: pagedData.page,
      size: pagedData.size,
      data: currentData.data,
      totalRecords: pagedData.totalRecords,
      firstPage: pagedData.firstPage,
      lastPage: pagedData.lastPage,
      nextPage: pagedData.nextPage,
      previousPage: pagedData.previousPage,
    );
    return currentData;
  }

  PaginatedData<T> appendUpdateIfExist(
      PaginatedData<T> currentData, PaginatedData<T>? pagedData) {
    if (pagedData == null) return currentData;
    return appendUpdate(currentData, pagedData);
  }
}
