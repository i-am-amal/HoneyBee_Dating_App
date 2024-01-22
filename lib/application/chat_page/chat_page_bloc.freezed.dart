// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatPageEvent {
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)
        newMessage,
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
    required TResult Function(String? senderId, String? receiverId)
        initializeGetAllMessagePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
    TResult? Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    TResult Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMessage value) newMessage,
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
    required TResult Function(_InitializeGetAllMessagePage value)
        initializeGetAllMessagePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult? Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPageEventCopyWith<ChatPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageEventCopyWith<$Res> {
  factory $ChatPageEventCopyWith(
          ChatPageEvent value, $Res Function(ChatPageEvent) then) =
      _$ChatPageEventCopyWithImpl<$Res, ChatPageEvent>;
  @useResult
  $Res call({String? senderId, String? receiverId});
}

/// @nodoc
class _$ChatPageEventCopyWithImpl<$Res, $Val extends ChatPageEvent>
    implements $ChatPageEventCopyWith<$Res> {
  _$ChatPageEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_NewMessageCopyWith<$Res>
    implements $ChatPageEventCopyWith<$Res> {
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
    extends _$ChatPageEventCopyWithImpl<$Res, _$_NewMessage>
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
    return 'ChatPageEvent.newMessage(controllerValue: $controllerValue, senderId: $senderId, receiverId: $receiverId, conversationId: $conversationId)';
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
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
    required TResult Function(String? senderId, String? receiverId)
        initializeGetAllMessagePage,
  }) {
    return newMessage(controllerValue, senderId, receiverId, conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
    TResult? Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
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
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    TResult Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
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
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
    required TResult Function(_InitializeGetAllMessagePage value)
        initializeGetAllMessagePage,
  }) {
    return newMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult? Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
  }) {
    return newMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) {
    if (newMessage != null) {
      return newMessage(this);
    }
    return orElse();
  }
}

abstract class _NewMessage implements ChatPageEvent {
  const factory _NewMessage(
      final String? controllerValue,
      final String? senderId,
      final String? receiverId,
      final String? conversationId) = _$_NewMessage;

  String? get controllerValue;
  @override
  String? get senderId;
  @override
  String? get receiverId;
  String? get conversationId;
  @override
  @JsonKey(ignore: true)
  _$$_NewMessageCopyWith<_$_NewMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllMessageOfUserCopyWith<$Res>
    implements $ChatPageEventCopyWith<$Res> {
  factory _$$_GetAllMessageOfUserCopyWith(_$_GetAllMessageOfUser value,
          $Res Function(_$_GetAllMessageOfUser) then) =
      __$$_GetAllMessageOfUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? senderId, String? receiverId});
}

/// @nodoc
class __$$_GetAllMessageOfUserCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res, _$_GetAllMessageOfUser>
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
    return 'ChatPageEvent.getAllMessageOfUser(senderId: $senderId, receiverId: $receiverId)';
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
    required TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)
        newMessage,
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
    required TResult Function(String? senderId, String? receiverId)
        initializeGetAllMessagePage,
  }) {
    return getAllMessageOfUser(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
    TResult? Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
  }) {
    return getAllMessageOfUser?.call(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    TResult Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
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
    required TResult Function(_NewMessage value) newMessage,
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
    required TResult Function(_InitializeGetAllMessagePage value)
        initializeGetAllMessagePage,
  }) {
    return getAllMessageOfUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult? Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
  }) {
    return getAllMessageOfUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) {
    if (getAllMessageOfUser != null) {
      return getAllMessageOfUser(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessageOfUser implements ChatPageEvent {
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
abstract class _$$_InitializeGetAllMessagePageCopyWith<$Res>
    implements $ChatPageEventCopyWith<$Res> {
  factory _$$_InitializeGetAllMessagePageCopyWith(
          _$_InitializeGetAllMessagePage value,
          $Res Function(_$_InitializeGetAllMessagePage) then) =
      __$$_InitializeGetAllMessagePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? senderId, String? receiverId});
}

/// @nodoc
class __$$_InitializeGetAllMessagePageCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res, _$_InitializeGetAllMessagePage>
    implements _$$_InitializeGetAllMessagePageCopyWith<$Res> {
  __$$_InitializeGetAllMessagePageCopyWithImpl(
      _$_InitializeGetAllMessagePage _value,
      $Res Function(_$_InitializeGetAllMessagePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? receiverId = freezed,
  }) {
    return _then(_$_InitializeGetAllMessagePage(
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

class _$_InitializeGetAllMessagePage implements _InitializeGetAllMessagePage {
  const _$_InitializeGetAllMessagePage(this.senderId, this.receiverId);

  @override
  final String? senderId;
  @override
  final String? receiverId;

  @override
  String toString() {
    return 'ChatPageEvent.initializeGetAllMessagePage(senderId: $senderId, receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeGetAllMessagePage &&
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
  _$$_InitializeGetAllMessagePageCopyWith<_$_InitializeGetAllMessagePage>
      get copyWith => __$$_InitializeGetAllMessagePageCopyWithImpl<
          _$_InitializeGetAllMessagePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)
        newMessage,
    required TResult Function(String? senderId, String? receiverId)
        getAllMessageOfUser,
    required TResult Function(String? senderId, String? receiverId)
        initializeGetAllMessagePage,
  }) {
    return initializeGetAllMessagePage(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult? Function(String? senderId, String? receiverId)?
        getAllMessageOfUser,
    TResult? Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
  }) {
    return initializeGetAllMessagePage?.call(senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? controllerValue, String? senderId,
            String? receiverId, String? conversationId)?
        newMessage,
    TResult Function(String? senderId, String? receiverId)? getAllMessageOfUser,
    TResult Function(String? senderId, String? receiverId)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) {
    if (initializeGetAllMessagePage != null) {
      return initializeGetAllMessagePage(senderId, receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMessage value) newMessage,
    required TResult Function(_GetAllMessageOfUser value) getAllMessageOfUser,
    required TResult Function(_InitializeGetAllMessagePage value)
        initializeGetAllMessagePage,
  }) {
    return initializeGetAllMessagePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMessage value)? newMessage,
    TResult? Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult? Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
  }) {
    return initializeGetAllMessagePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMessage value)? newMessage,
    TResult Function(_GetAllMessageOfUser value)? getAllMessageOfUser,
    TResult Function(_InitializeGetAllMessagePage value)?
        initializeGetAllMessagePage,
    required TResult orElse(),
  }) {
    if (initializeGetAllMessagePage != null) {
      return initializeGetAllMessagePage(this);
    }
    return orElse();
  }
}

abstract class _InitializeGetAllMessagePage implements ChatPageEvent {
  const factory _InitializeGetAllMessagePage(
          final String? senderId, final String? receiverId) =
      _$_InitializeGetAllMessagePage;

  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  @JsonKey(ignore: true)
  _$$_InitializeGetAllMessagePageCopyWith<_$_InitializeGetAllMessagePage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get controllerValue => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String? get coversationId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  List<GetMessageResponseModel>? get messages =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatPageStateCopyWith<ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageStateCopyWith<$Res> {
  factory $ChatPageStateCopyWith(
          ChatPageState value, $Res Function(ChatPageState) then) =
      _$ChatPageStateCopyWithImpl<$Res, ChatPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? senderId,
      String? receiverId,
      String? coversationId,
      String? date,
      String? time,
      List<GetMessageResponseModel>? messages,
      String? message,
      bool? isLoading});
}

/// @nodoc
class _$ChatPageStateCopyWithImpl<$Res, $Val extends ChatPageState>
    implements $ChatPageStateCopyWith<$Res> {
  _$ChatPageStateCopyWithImpl(this._value, this._then);

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
    Object? date = freezed,
    Object? time = freezed,
    Object? messages = freezed,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<GetMessageResponseModel>?,
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
abstract class _$$_ChatPageStateCopyWith<$Res>
    implements $ChatPageStateCopyWith<$Res> {
  factory _$$_ChatPageStateCopyWith(
          _$_ChatPageState value, $Res Function(_$_ChatPageState) then) =
      __$$_ChatPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? controllerValue,
      String? senderId,
      String? receiverId,
      String? coversationId,
      String? date,
      String? time,
      List<GetMessageResponseModel>? messages,
      String? message,
      bool? isLoading});
}

/// @nodoc
class __$$_ChatPageStateCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$_ChatPageState>
    implements _$$_ChatPageStateCopyWith<$Res> {
  __$$_ChatPageStateCopyWithImpl(
      _$_ChatPageState _value, $Res Function(_$_ChatPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? controllerValue = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? coversationId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? messages = freezed,
    Object? message = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ChatPageState(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<GetMessageResponseModel>?,
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

class _$_ChatPageState implements _ChatPageState {
  const _$_ChatPageState(
      {this.errorMessage,
      this.controllerValue,
      this.senderId,
      this.receiverId,
      this.coversationId,
      this.date,
      this.time,
      final List<GetMessageResponseModel>? messages,
      this.message,
      this.isLoading})
      : _messages = messages;

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
  final String? date;
  @override
  final String? time;
  final List<GetMessageResponseModel>? _messages;
  @override
  List<GetMessageResponseModel>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'ChatPageState(errorMessage: $errorMessage, controllerValue: $controllerValue, senderId: $senderId, receiverId: $receiverId, coversationId: $coversationId, date: $date, time: $time, messages: $messages, message: $message, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatPageState &&
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
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      controllerValue,
      senderId,
      receiverId,
      coversationId,
      date,
      time,
      const DeepCollectionEquality().hash(_messages),
      message,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      __$$_ChatPageStateCopyWithImpl<_$_ChatPageState>(this, _$identity);
}

abstract class _ChatPageState implements ChatPageState {
  const factory _ChatPageState(
      {final String? errorMessage,
      final String? controllerValue,
      final String? senderId,
      final String? receiverId,
      final String? coversationId,
      final String? date,
      final String? time,
      final List<GetMessageResponseModel>? messages,
      final String? message,
      final bool? isLoading}) = _$_ChatPageState;

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
  String? get date;
  @override
  String? get time;
  @override
  List<GetMessageResponseModel>? get messages;
  @override
  String? get message;
  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ChatPageStateCopyWith<_$_ChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
