// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAllMessageEvent {
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllMessageEventCopyWith<GetAllMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllMessageEventCopyWith<$Res> {
  factory $GetAllMessageEventCopyWith(
          GetAllMessageEvent value, $Res Function(GetAllMessageEvent) then) =
      _$GetAllMessageEventCopyWithImpl<$Res, GetAllMessageEvent>;
  @useResult
  $Res call({String? senderId, String? receiverId});
}

/// @nodoc
class _$GetAllMessageEventCopyWithImpl<$Res, $Val extends GetAllMessageEvent>
    implements $GetAllMessageEventCopyWith<$Res> {
  _$GetAllMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? receiverId = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAllMessageOfUserCopyWith<$Res>
    implements $GetAllMessageEventCopyWith<$Res> {
  factory _$$_GetAllMessageOfUserCopyWith(_$_GetAllMessageOfUser value,
          $Res Function(_$_GetAllMessageOfUser) then) =
      __$$_GetAllMessageOfUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? senderId, String? receiverId});
}

/// @nodoc
class __$$_GetAllMessageOfUserCopyWithImpl<$Res>
    extends _$GetAllMessageEventCopyWithImpl<$Res, _$_GetAllMessageOfUser>
    implements _$$_GetAllMessageOfUserCopyWith<$Res> {
  __$$_GetAllMessageOfUserCopyWithImpl(_$_GetAllMessageOfUser _value,
      $Res Function(_$_GetAllMessageOfUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? receiverId = freezed,
  }) {
    return _then(_$_GetAllMessageOfUser(
      freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetAllMessageOfUser implements _GetAllMessageOfUser {
  const _$_GetAllMessageOfUser(this.senderId, this.receiverId);

  @override
  final String? senderId;
  @override
  final String? receiverId;

  @override
  String toString() {
    return 'GetAllMessageEvent.getAllMessageOfUser(senderId: $senderId, receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllMessageOfUser &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderId, receiverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllMessageOfUserCopyWith<_$_GetAllMessageOfUser> get copyWith =>
      __$$_GetAllMessageOfUserCopyWithImpl<_$_GetAllMessageOfUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
  }) {
    return getAllMessageOfUser(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
  }) {
    return getAllMessageOfUser?.call(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    required TResult orElse(),
  }) {
    if (getAllMessageOfUser != null) {
      return getAllMessageOfUser(senderId, receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
  }) {
    return getAllMessageOfUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
  }) {
    return getAllMessageOfUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    required TResult orElse(),
  }) {
    if (getAllMessageOfUser != null) {
      return getAllMessageOfUser(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessageOfUser implements GetAllMessageEvent {
  const factory _GetAllMessageOfUser(
          final String? senderId, final String? receiverId) =
      _$_GetAllMessageOfUser;

  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllMessageOfUserCopyWith<_$_GetAllMessageOfUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllMessageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get fromSelf => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllMessageStateCopyWith<GetAllMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllMessageStateCopyWith<$Res> {
  factory $GetAllMessageStateCopyWith(
          GetAllMessageState value, $Res Function(GetAllMessageState) then) =
      _$GetAllMessageStateCopyWithImpl<$Res, GetAllMessageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? senderId,
      String? receiverId,
      String? message,
      bool? isLoading,
      bool? fromSelf});
}

/// @nodoc
class _$GetAllMessageStateCopyWithImpl<$Res, $Val extends GetAllMessageState>
    implements $GetAllMessageStateCopyWith<$Res> {
  _$GetAllMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
    Object? fromSelf = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromSelf: freezed == fromSelf
          ? _value.fromSelf
          : fromSelf // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAllMessageStateCopyWith<$Res>
    implements $GetAllMessageStateCopyWith<$Res> {
  factory _$$_GetAllMessageStateCopyWith(_$_GetAllMessageState value,
          $Res Function(_$_GetAllMessageState) then) =
      __$$_GetAllMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? senderId,
      String? receiverId,
      String? message,
      bool? isLoading,
      bool? fromSelf});
}

/// @nodoc
class __$$_GetAllMessageStateCopyWithImpl<$Res>
    extends _$GetAllMessageStateCopyWithImpl<$Res, _$_GetAllMessageState>
    implements _$$_GetAllMessageStateCopyWith<$Res> {
  __$$_GetAllMessageStateCopyWithImpl(
      _$_GetAllMessageState _value, $Res Function(_$_GetAllMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
    Object? fromSelf = freezed,
  }) {
    return _then(_$_GetAllMessageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromSelf: freezed == fromSelf
          ? _value.fromSelf
          : fromSelf // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_GetAllMessageState implements _GetAllMessageState {
  const _$_GetAllMessageState(
      {this.errorMessage,
      this.senderId,
      this.receiverId,
      this.message,
      this.isLoading,
      this.fromSelf});

  @override
  final String? errorMessage;
  @override
  final String? senderId;
  @override
  final String? receiverId;
  @override
  final String? message;
  @override
  final bool? isLoading;
  @override
  final bool? fromSelf;

  @override
  String toString() {
    return 'GetAllMessageState(errorMessage: $errorMessage, senderId: $senderId, receiverId: $receiverId, message: $message, isLoading: $isLoading, fromSelf: $fromSelf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllMessageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.fromSelf, fromSelf) ||
                other.fromSelf == fromSelf));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, senderId,
      receiverId, message, isLoading, fromSelf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllMessageStateCopyWith<_$_GetAllMessageState> get copyWith =>
      __$$_GetAllMessageStateCopyWithImpl<_$_GetAllMessageState>(
          this, _$identity);
}

abstract class _GetAllMessageState implements GetAllMessageState {
  const factory _GetAllMessageState(
      {final String? errorMessage,
      final String? senderId,
      final String? receiverId,
      final String? message,
      final bool? isLoading,
      final bool? fromSelf}) = _$_GetAllMessageState;

  @override
  String? get errorMessage;
  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  String? get message;
  @override
  bool? get isLoading;
  @override
  bool? get fromSelf;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllMessageStateCopyWith<_$_GetAllMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
