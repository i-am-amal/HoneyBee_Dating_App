// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageEvent {
  String? get controllerValue => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? age) searchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? age)? searchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? age)? searchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchData value) searchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchData value)? searchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchData value)? searchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageEventCopyWith<SearchPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageEventCopyWith<$Res> {
  factory $SearchPageEventCopyWith(
          SearchPageEvent value, $Res Function(SearchPageEvent) then) =
      _$SearchPageEventCopyWithImpl<$Res, SearchPageEvent>;
  @useResult
  $Res call({String? controllerValue, String? age});
}

/// @nodoc
class _$SearchPageEventCopyWithImpl<$Res, $Val extends SearchPageEvent>
    implements $SearchPageEventCopyWith<$Res> {
  _$SearchPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerValue = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      controllerValue: freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDataCopyWith<$Res>
    implements $SearchPageEventCopyWith<$Res> {
  factory _$$_SearchDataCopyWith(
          _$_SearchData value, $Res Function(_$_SearchData) then) =
      __$$_SearchDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? controllerValue, String? age});
}

/// @nodoc
class __$$_SearchDataCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res, _$_SearchData>
    implements _$$_SearchDataCopyWith<$Res> {
  __$$_SearchDataCopyWithImpl(
      _$_SearchData _value, $Res Function(_$_SearchData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerValue = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_SearchData(
      freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchData implements _SearchData {
  const _$_SearchData(this.controllerValue, this.age);

  @override
  final String? controllerValue;
  @override
  final String? age;

  @override
  String toString() {
    return 'SearchPageEvent.searchData(controllerValue: $controllerValue, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchData &&
            (identical(other.controllerValue, controllerValue) ||
                other.controllerValue == controllerValue) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controllerValue, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDataCopyWith<_$_SearchData> get copyWith =>
      __$$_SearchDataCopyWithImpl<_$_SearchData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? age) searchData,
  }) {
    return searchData(controllerValue, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? age)? searchData,
  }) {
    return searchData?.call(controllerValue, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? age)? searchData,
    required TResult orElse(),
  }) {
    if (searchData != null) {
      return searchData(controllerValue, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchData value) searchData,
  }) {
    return searchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchData value)? searchData,
  }) {
    return searchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchData value)? searchData,
    required TResult orElse(),
  }) {
    if (searchData != null) {
      return searchData(this);
    }
    return orElse();
  }
}

abstract class _SearchData implements SearchPageEvent {
  const factory _SearchData(final String? controllerValue, final String? age) =
      _$_SearchData;

  @override
  String? get controllerValue;
  @override
  String? get age;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDataCopyWith<_$_SearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get controllerValue => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  SearchFilterListResponseModel? get searchResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? age,
      bool? isLoading,
      SearchFilterListResponseModel? searchResult});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? controllerValue = freezed,
    Object? age = freezed,
    Object? isLoading = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerValue: freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchFilterListResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPageStateCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$_SearchPageStateCopyWith(
          _$_SearchPageState value, $Res Function(_$_SearchPageState) then) =
      __$$_SearchPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? age,
      bool? isLoading,
      SearchFilterListResponseModel? searchResult});
}

/// @nodoc
class __$$_SearchPageStateCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$_SearchPageState>
    implements _$$_SearchPageStateCopyWith<$Res> {
  __$$_SearchPageStateCopyWithImpl(
      _$_SearchPageState _value, $Res Function(_$_SearchPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? controllerValue = freezed,
    Object? age = freezed,
    Object? isLoading = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_$_SearchPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerValue: freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchFilterListResponseModel?,
    ));
  }
}

/// @nodoc

class _$_SearchPageState implements _SearchPageState {
  const _$_SearchPageState(
      {this.errorMessage,
      this.controllerValue,
      this.age,
      this.isLoading,
      this.searchResult});

  @override
  final String? errorMessage;
  @override
  final String? controllerValue;
  @override
  final String? age;
  @override
  final bool? isLoading;
  @override
  final SearchFilterListResponseModel? searchResult;

  @override
  String toString() {
    return 'SearchPageState(errorMessage: $errorMessage, controllerValue: $controllerValue, age: $age, isLoading: $isLoading, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.controllerValue, controllerValue) ||
                other.controllerValue == controllerValue) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, controllerValue, age, isLoading, searchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPageStateCopyWith<_$_SearchPageState> get copyWith =>
      __$$_SearchPageStateCopyWithImpl<_$_SearchPageState>(this, _$identity);
}

abstract class _SearchPageState implements SearchPageState {
  const factory _SearchPageState(
      {final String? errorMessage,
      final String? controllerValue,
      final String? age,
      final bool? isLoading,
      final SearchFilterListResponseModel? searchResult}) = _$_SearchPageState;

  @override
  String? get errorMessage;
  @override
  String? get controllerValue;
  @override
  String? get age;
  @override
  bool? get isLoading;
  @override
  SearchFilterListResponseModel? get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPageStateCopyWith<_$_SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
