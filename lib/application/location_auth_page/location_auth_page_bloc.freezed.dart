// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationAuthPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocationName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLocationName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocationName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLocationName value) fetchLocationName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLocationName value)? fetchLocationName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLocationName value)? fetchLocationName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAuthPageEventCopyWith<$Res> {
  factory $LocationAuthPageEventCopyWith(LocationAuthPageEvent value,
          $Res Function(LocationAuthPageEvent) then) =
      _$LocationAuthPageEventCopyWithImpl<$Res, LocationAuthPageEvent>;
}

/// @nodoc
class _$LocationAuthPageEventCopyWithImpl<$Res,
        $Val extends LocationAuthPageEvent>
    implements $LocationAuthPageEventCopyWith<$Res> {
  _$LocationAuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchLocationNameCopyWith<$Res> {
  factory _$$_FetchLocationNameCopyWith(_$_FetchLocationName value,
          $Res Function(_$_FetchLocationName) then) =
      __$$_FetchLocationNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchLocationNameCopyWithImpl<$Res>
    extends _$LocationAuthPageEventCopyWithImpl<$Res, _$_FetchLocationName>
    implements _$$_FetchLocationNameCopyWith<$Res> {
  __$$_FetchLocationNameCopyWithImpl(
      _$_FetchLocationName _value, $Res Function(_$_FetchLocationName) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchLocationName implements _FetchLocationName {
  const _$_FetchLocationName();

  @override
  String toString() {
    return 'LocationAuthPageEvent.fetchLocationName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchLocationName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocationName,
  }) {
    return fetchLocationName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLocationName,
  }) {
    return fetchLocationName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocationName,
    required TResult orElse(),
  }) {
    if (fetchLocationName != null) {
      return fetchLocationName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLocationName value) fetchLocationName,
  }) {
    return fetchLocationName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLocationName value)? fetchLocationName,
  }) {
    return fetchLocationName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLocationName value)? fetchLocationName,
    required TResult orElse(),
  }) {
    if (fetchLocationName != null) {
      return fetchLocationName(this);
    }
    return orElse();
  }
}

abstract class _FetchLocationName implements LocationAuthPageEvent {
  const factory _FetchLocationName() = _$_FetchLocationName;
}

/// @nodoc
mixin _$LocationAuthPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationAuthPageStateCopyWith<LocationAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAuthPageStateCopyWith<$Res> {
  factory $LocationAuthPageStateCopyWith(LocationAuthPageState value,
          $Res Function(LocationAuthPageState) then) =
      _$LocationAuthPageStateCopyWithImpl<$Res, LocationAuthPageState>;
  @useResult
  $Res call({String? errorMessage, String? locationName, bool? isLoading});
}

/// @nodoc
class _$LocationAuthPageStateCopyWithImpl<$Res,
        $Val extends LocationAuthPageState>
    implements $LocationAuthPageStateCopyWith<$Res> {
  _$LocationAuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? locationName = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationAuthPageStateCopyWith<$Res>
    implements $LocationAuthPageStateCopyWith<$Res> {
  factory _$$_LocationAuthPageStateCopyWith(_$_LocationAuthPageState value,
          $Res Function(_$_LocationAuthPageState) then) =
      __$$_LocationAuthPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage, String? locationName, bool? isLoading});
}

/// @nodoc
class __$$_LocationAuthPageStateCopyWithImpl<$Res>
    extends _$LocationAuthPageStateCopyWithImpl<$Res, _$_LocationAuthPageState>
    implements _$$_LocationAuthPageStateCopyWith<$Res> {
  __$$_LocationAuthPageStateCopyWithImpl(_$_LocationAuthPageState _value,
      $Res Function(_$_LocationAuthPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? locationName = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_LocationAuthPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LocationAuthPageState implements _LocationAuthPageState {
  const _$_LocationAuthPageState(
      {this.errorMessage, this.locationName, this.isLoading});

  @override
  final String? errorMessage;
  @override
  final String? locationName;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'LocationAuthPageState(errorMessage: $errorMessage, locationName: $locationName, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationAuthPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessage, locationName, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationAuthPageStateCopyWith<_$_LocationAuthPageState> get copyWith =>
      __$$_LocationAuthPageStateCopyWithImpl<_$_LocationAuthPageState>(
          this, _$identity);
}

abstract class _LocationAuthPageState implements LocationAuthPageState {
  const factory _LocationAuthPageState(
      {final String? errorMessage,
      final String? locationName,
      final bool? isLoading}) = _$_LocationAuthPageState;

  @override
  String? get errorMessage;
  @override
  String? get locationName;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LocationAuthPageStateCopyWith<_$_LocationAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
