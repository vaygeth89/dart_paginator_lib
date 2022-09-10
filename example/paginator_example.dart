import 'package:paginator/paginator.dart';

final List<String> employeesRecords = [
  "John",
  "Ali",
  "Claire",
  "Singh",
  "Sara",
  "Khalid",
  "Louis",
  "Katie",
  "Sandra",
  "Sofia"
];
void main() {
  final currentPage = getEmployees(1, 2);
  final nextPage = getEmployees(2, 2);
}

class EmployeesRepo with Paginator<String> {
  PaginatedData<String> data = PaginatedData.empty();
  Future loadPage({bool isPaginating = true}) async {
    final newData = await paginateNextPage(data, _getData);
    appendUpdateIfExist(data, newData);
  }

  //Your web service for example
  Future<PaginatedData<String>> _getData(int id) async {
    return PaginatedData(1, 2, ["John", "Ali"], 10);
  }
}

PaginatedData<String> getEmployees(int page, int size) {
  return PaginatedData(
      page,
      size,
      employeesRecords.sublist((page - 1) * size, size),
      employeesRecords.length);
}
