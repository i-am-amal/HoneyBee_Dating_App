// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_liked_users_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllLikedUsersPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLikedUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLikedUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLikedUsersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLikedUsersData value) fetchLikedUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLikedUsersData value)? fetchLikedUsersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLikedUsersData value)? fetchLikedUsersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLikedUsersPageEventCopyWith<$Res> {
  factory $AllLikedUsersPageEventCopyWith(AllLikedUsersPageEvent value,
          $Res Function(AllLikedUsersPageEvent) then) =
      _$AllLikedUsersPageEventCopyWithImpl<$Res, AllLikedUsersPageEvent>;
}

/// @nodoc
class _$AllLikedUsersPageEventCopyWithImpl<$Res,
        $Val extends AllLikedUsersPageEvent>
    implements $AllLikedUsersPageEventCopyWith<$Res> {
  _$AllLikedUsersPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchLikedUsersDataCopyWith<$Res> {
  factory _$$_FetchLikedUsersDataCopyWith(_$_FetchLikedUsersData value,
          $Res Function(_$_FetchLikedUsersData) then) =
      __$$_FetchLikedUsersDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchLikedUsersDataCopyWithImpl<$Res>
    extends _$AllLikedUsersPageEventCopyWithImpl<$Res, _$_FetchLikedUsersData>
    implements _$$_FetchLikedUsersDataCopyWith<$Res> {
  __$$_FetchLikedUsersDataCopyWithImpl(_$_FetchLikedUsersData _value,
      $Res Function(_$_FetchLikedUsersData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchLikedUsersData implements _FetchLikedUsersData {
  const _$_FetchLikedUsersData();

  @override
  String toString() {
    return 'AllLikedUsersPageEvent.fetchLikedUsersData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchLikedUsersData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLikedUsersData,
  }) {
    return fetchLikedUsersData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLikedUsersData,
  }) {
    return fetchLikedUsersData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLikedUsersData,
    required TResult orElse(),
  }) {
    if (fetchLikedUsersData != null) {
      return fetchLikedUsersData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLikedUsersData value) fetchLikedUsersData,
  }) {
    return fetchLikedUsersData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLikedUsersData value)? fetchLikedUsersData,
  }) {
    return fetchLikedUsersData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLikedUsersData value)? fetchLikedUsersData,
    required TResult orElse(),
  }) {
    if (fetchLikedUsersData != null) {
      return fetchLikedUsersData(this);
    }
    return orElse();
  }
}

abstract class _FetchLikedUsersData implements AllLikedUsersPageEvent {
  const factory _FetchLikedUsersData() = _$_FetchLikedUsersData;
}

/// @nodoc
mixin _$AllLikedUsersPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get updateState => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  AllLikedUsersListResponseModel? get profile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllLikedUsersPageStateCopyWith<AllLikedUsersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLikedUsersPageStateCopyWith<$Res> {
  factory $AllLikedUsersPageStateCopyWith(AllLikedUsersPageState value,
          $Res Function(AllLikedUsersPageState) then) =
      _$AllLikedUsersPageStateCopyWithImpl<$Res, AllLikedUsersPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      bool? updateState,
      String? userId,
      AllLikedUsersListResponseModel? profile});
}

/// @nodoc
class _$AllLikedUsersPageStateCopyWithImpl<$Res,
        $Val extends AllLikedUsersPageState>
    implements $AllLikedUsersPageStateCopyWith<$Res> {
  _$AllLikedUsersPageStateCopyWithImpl(this._value, this._then);

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
              as AllLikedUsersListResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchesPageStateCopyWith<$Res>
    implements $AllLikedUsersPageStateCopyWith<$Res> {
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
      AllLikedUsersListResponseModel? profile});
}

/// @nodoc
class __$$_MatchesPageStateCopyWithImpl<$Res>
    extends _$AllLikedUsersPageStateCopyWithImpl<$Res, _$_MatchesPageState>
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
              as AllLikedUsersListResponseModel?,
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
  final AllLikedUsersListResponseModel? profile;

  @override
  String toString() {
    return 'AllLikedUsersPageState(errorMessage: $errorMessage, isLoading: $isLoading, updateState: $updateState, userId: $userId, profile: $profile)';
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

abstract class _MatchesPageState implements AllLikedUsersPageState {
  const factory _MatchesPageState(
      {final String? errorMessage,
      final bool? isLoading,
      final bool? updateState,
      final String? userId,
      final AllLikedUsersListResponseModel? profile}) = _$_MatchesPageState;

  @override
  String? get errorMessage;
  @override
  bool? get isLoading;
  @override
  bool? get updateState;
  @override
  String? get userId;
  @override
  AllLikedUsersListResponseModel? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_MatchesPageStateCopyWith<_$_MatchesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
