// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matches_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchesPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMatchesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMatchesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMatchesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMatchesData value) fetchMatchesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMatchesData value)? fetchMatchesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMatchesData value)? fetchMatchesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesPageEventCopyWith<$Res> {
  factory $MatchesPageEventCopyWith(
          MatchesPageEvent value, $Res Function(MatchesPageEvent) then) =
      _$MatchesPageEventCopyWithImpl<$Res, MatchesPageEvent>;
}

/// @nodoc
class _$MatchesPageEventCopyWithImpl<$Res, $Val extends MatchesPageEvent>
    implements $MatchesPageEventCopyWith<$Res> {
  _$MatchesPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchMatchesDataCopyWith<$Res> {
  factory _$$_FetchMatchesDataCopyWith(
          _$_FetchMatchesData value, $Res Function(_$_FetchMatchesData) then) =
      __$$_FetchMatchesDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchMatchesDataCopyWithImpl<$Res>
    extends _$MatchesPageEventCopyWithImpl<$Res, _$_FetchMatchesData>
    implements _$$_FetchMatchesDataCopyWith<$Res> {
  __$$_FetchMatchesDataCopyWithImpl(
      _$_FetchMatchesData _value, $Res Function(_$_FetchMatchesData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchMatchesData implements _FetchMatchesData {
  const _$_FetchMatchesData();

  @override
  String toString() {
    return 'MatchesPageEvent.fetchMatchesData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchMatchesData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMatchesData,
  }) {
    return fetchMatchesData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMatchesData,
  }) {
    return fetchMatchesData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMatchesData,
    required TResult orElse(),
  }) {
    if (fetchMatchesData != null) {
      return fetchMatchesData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMatchesData value) fetchMatchesData,
  }) {
    return fetchMatchesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMatchesData value)? fetchMatchesData,
  }) {
    return fetchMatchesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMatchesData value)? fetchMatchesData,
    required TResult orElse(),
  }) {
    if (fetchMatchesData != null) {
      return fetchMatchesData(this);
    }
    return orElse();
  }
}

abstract class _FetchMatchesData implements MatchesPageEvent {
  const factory _FetchMatchesData() = _$_FetchMatchesData;
}

/// @nodoc
mixin _$MatchesPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get updateState => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  MatchesListResponseModel? get profile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchesPageStateCopyWith<MatchesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesPageStateCopyWith<$Res> {
  factory $MatchesPageStateCopyWith(
          MatchesPageState value, $Res Function(MatchesPageState) then) =
      _$MatchesPageStateCopyWithImpl<$Res, MatchesPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      bool? updateState,
      String? userId,
      MatchesListResponseModel? profile});
}

/// @nodoc
class _$MatchesPageStateCopyWithImpl<$Res, $Val extends MatchesPageState>
    implements $MatchesPageStateCopyWith<$Res> {
  _$MatchesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? updateState = freezed,
    Object? userId = freezed,
    Object? profile = freezed,
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
      updateState: freezed == updateState
          ? _value.updateState
          : updateState // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as MatchesListResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchesPageStateCopyWith<$Res>
    implements $MatchesPageStateCopyWith<$Res> {
  factory _$$_MatchesPageStateCopyWith(
          _$_MatchesPageState value, $Res Function(_$_MatchesPageState) then) =
      __$$_MatchesPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      bool? updateState,
      String? userId,
      MatchesListResponseModel? profile});
}

/// @nodoc
class __$$_MatchesPageStateCopyWithImpl<$Res>
    extends _$MatchesPageStateCopyWithImpl<$Res, _$_MatchesPageState>
    implements _$$_MatchesPageStateCopyWith<$Res> {
  __$$_MatchesPageStateCopyWithImpl(
      _$_MatchesPageState _value, $Res Function(_$_MatchesPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? updateState = freezed,
    Object? userId = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_MatchesPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateState: freezed == updateState
          ? _value.updateState
          : updateState // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as MatchesListResponseModel?,
    ));
  }
}

/// @nodoc

class _$_MatchesPageState implements _MatchesPageState {
  const _$_MatchesPageState(
      {this.errorMessage,
      this.isLoading,
      this.updateState,
      this.userId,
      this.profile});

  @override
  final String? errorMessage;
  @override
  final bool? isLoading;
  @override
  final bool? updateState;
  @override
  final String? userId;
  @override
  final MatchesListResponseModel? profile;

  @override
  String toString() {
    return 'MatchesPageState(errorMessage: $errorMessage, isLoading: $isLoading, updateState: $updateState, userId: $userId, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchesPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.updateState, updateState) ||
                other.updateState == updateState) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, isLoading, updateState, userId, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchesPageStateCopyWith<_$_MatchesPageState> get copyWith =>
      __$$_MatchesPageStateCopyWithImpl<_$_MatchesPageState>(this, _$identity);
}

abstract class _MatchesPageState implements MatchesPageState {
  const factory _MatchesPageState(
      {final String? errorMessage,
      final bool? isLoading,
      final bool? updateState,
      final String? userId,
      final MatchesListResponseModel? profile}) = _$_MatchesPageState;

  @override
  String? get errorMessage;
  @override
  bool? get isLoading;
  @override
  bool? get updateState;
  @override
  String? get userId;
  @override
  MatchesListResponseModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_MatchesPageStateCopyWith<_$_MatchesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
