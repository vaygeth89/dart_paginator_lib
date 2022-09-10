// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginator_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedData<T> {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  int get totalRecords => throw _privateConstructorUsedError;
  Uri? get firstPage => throw _privateConstructorUsedError;
  Uri? get lastPage => throw _privateConstructorUsedError;
  Uri? get nextPage => throw _privateConstructorUsedError;
  Uri? get previousPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<T, $Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData<T> value, $Res Function(PaginatedData<T>) then) =
      _$PaginatedDataCopyWithImpl<T, $Res>;
  $Res call(
      {int page,
      int size,
      List<T> data,
      int totalRecords,
      Uri? firstPage,
      Uri? lastPage,
      Uri? nextPage,
      Uri? previousPage});
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  final PaginatedData<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedData<T>) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? data = freezed,
    Object? totalRecords = freezed,
    Object? firstPage = freezed,
    Object? lastPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalRecords: totalRecords == freezed
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginatedDataCopyWith<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  factory _$$_PaginatedDataCopyWith(
          _$_PaginatedData<T> value, $Res Function(_$_PaginatedData<T>) then) =
      __$$_PaginatedDataCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {int page,
      int size,
      List<T> data,
      int totalRecords,
      Uri? firstPage,
      Uri? lastPage,
      Uri? nextPage,
      Uri? previousPage});
}

/// @nodoc
class __$$_PaginatedDataCopyWithImpl<T, $Res>
    extends _$PaginatedDataCopyWithImpl<T, $Res>
    implements _$$_PaginatedDataCopyWith<T, $Res> {
  __$$_PaginatedDataCopyWithImpl(
      _$_PaginatedData<T> _value, $Res Function(_$_PaginatedData<T>) _then)
      : super(_value, (v) => _then(v as _$_PaginatedData<T>));

  @override
  _$_PaginatedData<T> get _value => super._value as _$_PaginatedData<T>;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? data = freezed,
    Object? totalRecords = freezed,
    Object? firstPage = freezed,
    Object? lastPage = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_$_PaginatedData<T>(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalRecords == freezed
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc

class _$_PaginatedData<T> extends _PaginatedData<T> {
  _$_PaginatedData(this.page, this.size, final List<T> data, this.totalRecords,
      {this.firstPage, this.lastPage, this.nextPage, this.previousPage})
      : _data = data,
        super._();

  @override
  final int page;
  @override
  final int size;
  final List<T> _data;
  @override
  List<T> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int totalRecords;
  @override
  final Uri? firstPage;
  @override
  final Uri? lastPage;
  @override
  final Uri? nextPage;
  @override
  final Uri? previousPage;

  @override
  String toString() {
    return 'PaginatedData<$T>(page: $page, size: $size, data: $data, totalRecords: $totalRecords, firstPage: $firstPage, lastPage: $lastPage, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedData<T> &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.totalRecords, totalRecords) &&
            const DeepCollectionEquality().equals(other.firstPage, firstPage) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality()
                .equals(other.previousPage, previousPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(totalRecords),
      const DeepCollectionEquality().hash(firstPage),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(previousPage));

  @JsonKey(ignore: true)
  @override
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      __$$_PaginatedDataCopyWithImpl<T, _$_PaginatedData<T>>(this, _$identity);
}

abstract class _PaginatedData<T> extends PaginatedData<T> {
  factory _PaginatedData(final int page, final int size, final List<T> data,
      final int totalRecords,
      {final Uri? firstPage,
      final Uri? lastPage,
      final Uri? nextPage,
      final Uri? previousPage}) = _$_PaginatedData<T>;
  _PaginatedData._() : super._();

  @override
  int get page;
  @override
  int get size;
  @override
  List<T> get data;
  @override
  int get totalRecords;
  @override
  Uri? get firstPage;
  @override
  Uri? get lastPage;
  @override
  Uri? get nextPage;
  @override
  Uri? get previousPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
