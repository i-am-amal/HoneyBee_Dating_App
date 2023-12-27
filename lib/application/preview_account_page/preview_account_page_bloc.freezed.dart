// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_account_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreviewAccountPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAccountData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAccountData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAccountData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAccountData value) fetchAccountData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAccountData value)? fetchAccountData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAccountData value)? fetchAccountData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewAccountPageEventCopyWith<$Res> {
  factory $PreviewAccountPageEventCopyWith(PreviewAccountPageEvent value,
          $Res Function(PreviewAccountPageEvent) then) =
      _$PreviewAccountPageEventCopyWithImpl<$Res, PreviewAccountPageEvent>;
}

/// @nodoc
class _$PreviewAccountPageEventCopyWithImpl<$Res,
        $Val extends PreviewAccountPageEvent>
    implements $PreviewAccountPageEventCopyWith<$Res> {
  _$PreviewAccountPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchAccountDataCopyWith<$Res> {
  factory _$$_FetchAccountDataCopyWith(
          _$_FetchAccountData value, $Res Function(_$_FetchAccountData) then) =
      __$$_FetchAccountDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAccountDataCopyWithImpl<$Res>
    extends _$PreviewAccountPageEventCopyWithImpl<$Res, _$_FetchAccountData>
    implements _$$_FetchAccountDataCopyWith<$Res> {
  __$$_FetchAccountDataCopyWithImpl(
      _$_FetchAccountData _value, $Res Function(_$_FetchAccountData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchAccountData implements _FetchAccountData {
  const _$_FetchAccountData();

  @override
  String toString() {
    return 'PreviewAccountPageEvent.fetchAccountData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAccountData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAccountData,
  }) {
    return fetchAccountData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAccountData,
  }) {
    return fetchAccountData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAccountData,
    required TResult orElse(),
  }) {
    if (fetchAccountData != null) {
      return fetchAccountData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAccountData value) fetchAccountData,
  }) {
    return fetchAccountData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAccountData value)? fetchAccountData,
  }) {
    return fetchAccountData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAccountData value)? fetchAccountData,
    required TResult orElse(),
  }) {
    if (fetchAccountData != null) {
      return fetchAccountData(this);
    }
    return orElse();
  }
}

abstract class _FetchAccountData implements PreviewAccountPageEvent {
  const factory _FetchAccountData() = _$_FetchAccountData;
}

/// @nodoc
mixin _$PreviewAccountPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  GetUserDataResponseModel? get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewAccountPageStateCopyWith<PreviewAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewAccountPageStateCopyWith<$Res> {
  factory $PreviewAccountPageStateCopyWith(PreviewAccountPageState value,
          $Res Function(PreviewAccountPageState) then) =
      _$PreviewAccountPageStateCopyWithImpl<$Res, PreviewAccountPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      String? token,
      GetUserDataResponseModel? success});
}

/// @nodoc
class _$PreviewAccountPageStateCopyWithImpl<$Res,
        $Val extends PreviewAccountPageState>
    implements $PreviewAccountPageStateCopyWith<$Res> {
  _$PreviewAccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? token = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as GetUserDataResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewAccountPageStateCopyWith<$Res>
    implements $PreviewAccountPageStateCopyWith<$Res> {
  factory _$$_PreviewAccountPageStateCopyWith(_$_PreviewAccountPageState value,
          $Res Function(_$_PreviewAccountPageState) then) =
      __$$_PreviewAccountPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      String? token,
      GetUserDataResponseModel? success});
}

/// @nodoc
class __$$_PreviewAccountPageStateCopyWithImpl<$Res>
    extends _$PreviewAccountPageStateCopyWithImpl<$Res,
        _$_PreviewAccountPageState>
    implements _$$_PreviewAccountPageStateCopyWith<$Res> {
  __$$_PreviewAccountPageStateCopyWithImpl(_$_PreviewAccountPageState _value,
      $Res Function(_$_PreviewAccountPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? token = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_PreviewAccountPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as GetUserDataResponseModel?,
    ));
  }
}

/// @nodoc

class _$_PreviewAccountPageState implements _PreviewAccountPageState {
  const _$_PreviewAccountPageState(
      {this.errorMessage, this.isLoading, this.token, this.success});

  @override
  final String? errorMessage;
  @override
  final bool? isLoading;
  @override
  final String? token;
  @override
  final GetUserDataResponseModel? success;

  @override
  String toString() {
    return 'PreviewAccountPageState(errorMessage: $errorMessage, isLoading: $isLoading, token: $token, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewAccountPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessage, isLoading, token, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewAccountPageStateCopyWith<_$_PreviewAccountPageState>
      get copyWith =>
          __$$_PreviewAccountPageStateCopyWithImpl<_$_PreviewAccountPageState>(
              this, _$identity);
}

abstract class _PreviewAccountPageState implements PreviewAccountPageState {
  const factory _PreviewAccountPageState(
      {final String? errorMessage,
      final bool? isLoading,
      final String? token,
      final GetUserDataResponseModel? success}) = _$_PreviewAccountPageState;

  @override
  String? get errorMessage;
  @override
  bool? get isLoading;
  @override
  String? get token;
  @override
  GetUserDataResponseModel? get success;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewAccountPageStateCopyWith<_$_PreviewAccountPageState>
      get copyWith => throw _privateConstructorUsedError;
}
