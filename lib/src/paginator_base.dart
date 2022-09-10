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

abstract class PaginatorService<T> {
  Future<PaginatedData<T>> paginate(int page, {int size = 2});
}

class ApiService implements PaginatorService {
  @override
  Future<PaginatedData<String>> paginate(int page, {int size = 2}) async {
    return PaginatedData(1, 2, ["John", "Ali"], 10);
  }
}

void main() {
  final paginator = Paginator<String>(ApiService());
  paginator.paginateNextPage();
}

class Paginator<T> {
  Paginator(this.service);
  final PaginatorService<T> service;
  PaginatedData<T> currentData = PaginatedData.empty();

  Future<PaginatedData<T>> paginateNextPage() async {
    if (currentData.nextPage != null &&
        currentData.page < (currentData.totalRecords / currentData.size)) {
      int nextPageNumber = currentData.page + 1;
      PaginatedData<T> newPagedData = await service.paginate(nextPageNumber);
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
