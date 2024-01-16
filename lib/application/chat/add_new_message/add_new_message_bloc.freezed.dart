// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNewMessageEvent {
  String? get controllerValue => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get conversationId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)
        newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMessage value) newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewMessageEventCopyWith<AddNewMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewMessageEventCopyWith<$Res> {
  factory $AddNewMessageEventCopyWith(
          AddNewMessageEvent value, $Res Function(AddNewMessageEvent) then) =
      _$AddNewMessageEventCopyWithImpl<$Res, AddNewMessageEvent>;
  @useResult
  $Res call(
      {String? controllerValue,
      String? senderId,
      String? receiverId,
      String? conversationId});
}

/// @nodoc
class _$AddNewMessageEventCopyWithImpl<$Res, $Val extends AddNewMessageEvent>
    implements $AddNewMessageEventCopyWith<$Res> {
  _$AddNewMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerValue = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? conversationId = freezed,
  }) {
    return _then(_value.copyWith(
      controllerValue: freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      conversationId: freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewMessageCopyWith<$Res>
    implements $AddNewMessageEventCopyWith<$Res> {
  factory _$$_NewMessageCopyWith(
          _$_NewMessage value, $Res Function(_$_NewMessage) then) =
      __$$_NewMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? controllerValue,
      String? senderId,
      String? receiverId,
      String? conversationId});
}

/// @nodoc
class __$$_NewMessageCopyWithImpl<$Res>
    extends _$AddNewMessageEventCopyWithImpl<$Res, _$_NewMessage>
    implements _$$_NewMessageCopyWith<$Res> {
  __$$_NewMessageCopyWithImpl(
      _$_NewMessage _value, $Res Function(_$_NewMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllerValue = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? conversationId = freezed,
  }) {
    return _then(_$_NewMessage(
      freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewMessage implements _NewMessage {
  const _$_NewMessage(this.controllerValue, this.senderId, this.receiverId,
      this.conversationId);

  @override
  final String? controllerValue;
  @override
  final String? senderId;
  @override
  final String? receiverId;
  @override
  final String? conversationId;

  @override
  String toString() {
    return 'AddNewMessageEvent.newMessage(controllerValue: $controllerValue, senderId: $senderId, receiverId: $receiverId, conversationId: $conversationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewMessage &&
            (identical(other.controllerValue, controllerValue) ||
                other.controllerValue == controllerValue) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, controllerValue, senderId, receiverId, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewMessageCopyWith<_$_NewMessage> get copyWith =>
      __$$_NewMessageCopyWithImpl<_$_NewMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)
        newMessage,
  }) {
    return newMessage(controllerValue, senderId, receiverId, conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
  }) {
    return newMessage?.call(
        controllerValue, senderId, receiverId, conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(controllerValue, senderId, receiverId, conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMessage value) newMessage,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }
}

abstract class _NewMessage implements AddNewMessageEvent {
  const factory _NewMessage(
      final String? controllerValue,
      final String? senderId,
      final String? receiverId,
      final String? conversationId) = _$_NewMessage;

  @override
  String? get controllerValue;
  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  String? get conversationId;
  @override
  @JsonKey(ignore: true)
  _$$_NewMessageCopyWith<_$_NewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNewMessageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get controllerValue => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get coversationId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewMessageStateCopyWith<AddNewMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewMessageStateCopyWith<$Res> {
  factory $AddNewMessageStateCopyWith(
          AddNewMessageState value, $Res Function(AddNewMessageState) then) =
      _$AddNewMessageStateCopyWithImpl<$Res, AddNewMessageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? senderId,
      String? receiverId,
      String? coversationId,
      String? message,
      bool? isLoading});
}

/// @nodoc
class _$AddNewMessageStateCopyWithImpl<$Res, $Val extends AddNewMessageState>
    implements $AddNewMessageStateCopyWith<$Res> {
  _$AddNewMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? controllerValue = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? coversationId = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
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
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      coversationId: freezed == coversationId
          ? _value.coversationId
          : coversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddNewMessageStateCopyWith<$Res>
    implements $AddNewMessageStateCopyWith<$Res> {
  factory _$$_AddNewMessageStateCopyWith(_$_AddNewMessageState value,
          $Res Function(_$_AddNewMessageState) then) =
      __$$_AddNewMessageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? senderId,
      String? receiverId,
      String? coversationId,
      String? message,
      bool? isLoading});
}

/// @nodoc
class __$$_AddNewMessageStateCopyWithImpl<$Res>
    extends _$AddNewMessageStateCopyWithImpl<$Res, _$_AddNewMessageState>
    implements _$$_AddNewMessageStateCopyWith<$Res> {
  __$$_AddNewMessageStateCopyWithImpl(
      _$_AddNewMessageState _value, $Res Function(_$_AddNewMessageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? controllerValue = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? coversationId = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_AddNewMessageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerValue: freezed == controllerValue
          ? _value.controllerValue
          : controllerValue // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      coversationId: freezed == coversationId
          ? _value.coversationId
          : coversationId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AddNewMessageState implements _AddNewMessageState {
  const _$_AddNewMessageState(
      {this.errorMessage,
      this.controllerValue,
      this.senderId,
      this.receiverId,
      this.coversationId,
      this.message,
      this.isLoading});

  @override
  final String? errorMessage;
  @override
  final String? controllerValue;
  @override
  final String? senderId;
  @override
  final String? receiverId;
  @override
  final String? coversationId;
  @override
  final String? message;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'AddNewMessageState(errorMessage: $errorMessage, controllerValue: $controllerValue, senderId: $senderId, receiverId: $receiverId, coversationId: $coversationId, message: $message, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewMessageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.controllerValue, controllerValue) ||
                other.controllerValue == controllerValue) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.coversationId, coversationId) ||
                other.coversationId == coversationId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, controllerValue,
      senderId, receiverId, coversationId, message, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewMessageStateCopyWith<_$_AddNewMessageState> get copyWith =>
      __$$_AddNewMessageStateCopyWithImpl<_$_AddNewMessageState>(
          this, _$identity);
}

abstract class _AddNewMessageState implements AddNewMessageState {
  const factory _AddNewMessageState(
      {final String? errorMessage,
      final String? controllerValue,
      final String? senderId,
      final String? receiverId,
      final String? coversationId,
      final String? message,
      final bool? isLoading}) = _$_AddNewMessageState;

  @override
  String? get errorMessage;
  @override
  String? get controllerValue;
  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  String? get coversationId;
  @override
  String? get message;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AddNewMessageStateCopyWith<_$_AddNewMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
