// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumberAuthPageEvent {
  String? get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) phoneNumberLogin,
    required TResult Function(String? phoneNumber) setPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? phoneNumberLogin,
    TResult? Function(String? phoneNumber)? setPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? phoneNumberLogin,
    TResult Function(String? phoneNumber)? setPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberLogin value) phoneNumberLogin,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberAuthPageEventCopyWith<PhoneNumberAuthPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberAuthPageEventCopyWith<$Res> {
  factory $PhoneNumberAuthPageEventCopyWith(PhoneNumberAuthPageEvent value,
          $Res Function(PhoneNumberAuthPageEvent) then) =
      _$PhoneNumberAuthPageEventCopyWithImpl<$Res, PhoneNumberAuthPageEvent>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class _$PhoneNumberAuthPageEventCopyWithImpl<$Res,
        $Val extends PhoneNumberAuthPageEvent>
    implements $PhoneNumberAuthPageEventCopyWith<$Res> {
  _$PhoneNumberAuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneNumberLoginCopyWith<$Res>
    implements $PhoneNumberAuthPageEventCopyWith<$Res> {
  factory _$$_PhoneNumberLoginCopyWith(
          _$_PhoneNumberLogin value, $Res Function(_$_PhoneNumberLogin) then) =
      __$$_PhoneNumberLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberLoginCopyWithImpl<$Res>
    extends _$PhoneNumberAuthPageEventCopyWithImpl<$Res, _$_PhoneNumberLogin>
    implements _$$_PhoneNumberLoginCopyWith<$Res> {
  __$$_PhoneNumberLoginCopyWithImpl(
      _$_PhoneNumberLogin _value, $Res Function(_$_PhoneNumberLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PhoneNumberLogin(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberLogin implements _PhoneNumberLogin {
  const _$_PhoneNumberLogin({this.phoneNumber});

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberAuthPageEvent.phoneNumberLogin(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberLogin &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberLoginCopyWith<_$_PhoneNumberLogin> get copyWith =>
      __$$_PhoneNumberLoginCopyWithImpl<_$_PhoneNumberLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) phoneNumberLogin,
    required TResult Function(String? phoneNumber) setPhoneNumber,
  }) {
    return phoneNumberLogin(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? phoneNumberLogin,
    TResult? Function(String? phoneNumber)? setPhoneNumber,
  }) {
    return phoneNumberLogin?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? phoneNumberLogin,
    TResult Function(String? phoneNumber)? setPhoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumberLogin != null) {
      return phoneNumberLogin(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberLogin value) phoneNumberLogin,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
  }) {
    return phoneNumberLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
  }) {
    return phoneNumberLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumberLogin != null) {
      return phoneNumberLogin(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberLogin implements PhoneNumberAuthPageEvent {
  const factory _PhoneNumberLogin({final String? phoneNumber}) =
      _$_PhoneNumberLogin;

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberLoginCopyWith<_$_PhoneNumberLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetPhoneNumberCopyWith<$Res>
    implements $PhoneNumberAuthPageEventCopyWith<$Res> {
  factory _$$_SetPhoneNumberCopyWith(
          _$_SetPhoneNumber value, $Res Function(_$_SetPhoneNumber) then) =
      __$$_SetPhoneNumberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$_SetPhoneNumberCopyWithImpl<$Res>
    extends _$PhoneNumberAuthPageEventCopyWithImpl<$Res, _$_SetPhoneNumber>
    implements _$$_SetPhoneNumberCopyWith<$Res> {
  __$$_SetPhoneNumberCopyWithImpl(
      _$_SetPhoneNumber _value, $Res Function(_$_SetPhoneNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_SetPhoneNumber(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetPhoneNumber implements _SetPhoneNumber {
  const _$_SetPhoneNumber({this.phoneNumber});

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberAuthPageEvent.setPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPhoneNumberCopyWith<_$_SetPhoneNumber> get copyWith =>
      __$$_SetPhoneNumberCopyWithImpl<_$_SetPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) phoneNumberLogin,
    required TResult Function(String? phoneNumber) setPhoneNumber,
  }) {
    return setPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? phoneNumberLogin,
    TResult? Function(String? phoneNumber)? setPhoneNumber,
  }) {
    return setPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? phoneNumberLogin,
    TResult Function(String? phoneNumber)? setPhoneNumber,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberLogin value) phoneNumberLogin,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
  }) {
    return setPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
  }) {
    return setPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberLogin value)? phoneNumberLogin,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _SetPhoneNumber implements PhoneNumberAuthPageEvent {
  const factory _SetPhoneNumber({final String? phoneNumber}) =
      _$_SetPhoneNumber;

  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SetPhoneNumberCopyWith<_$_SetPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneNumberAuthPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isPhoneNumberVerified => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberAuthPageStateCopyWith<PhoneNumberAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberAuthPageStateCopyWith<$Res> {
  factory $PhoneNumberAuthPageStateCopyWith(PhoneNumberAuthPageState value,
          $Res Function(PhoneNumberAuthPageState) then) =
      _$PhoneNumberAuthPageStateCopyWithImpl<$Res, PhoneNumberAuthPageState>;
  @useResult
  $Res call(
      {String? errorMessage, bool? isPhoneNumberVerified, String? phoneNumber});
}

/// @nodoc
class _$PhoneNumberAuthPageStateCopyWithImpl<$Res,
        $Val extends PhoneNumberAuthPageState>
    implements $PhoneNumberAuthPageStateCopyWith<$Res> {
  _$PhoneNumberAuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isPhoneNumberVerified = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneNumberVerified: freezed == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PhoneNumberAuthPageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage, bool? isPhoneNumberVerified, String? phoneNumber});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PhoneNumberAuthPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isPhoneNumberVerified = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_Initial(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneNumberVerified: freezed == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.errorMessage, this.isPhoneNumberVerified, this.phoneNumber});

  @override
  final String? errorMessage;
  @override
  final bool? isPhoneNumberVerified;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberAuthPageState.initial(errorMessage: $errorMessage, isPhoneNumberVerified: $isPhoneNumberVerified, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isPhoneNumberVerified, isPhoneNumberVerified) ||
                other.isPhoneNumberVerified == isPhoneNumberVerified) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, isPhoneNumberVerified, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)
        initial,
  }) {
    return initial(errorMessage, isPhoneNumberVerified, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)?
        initial,
  }) {
    return initial?.call(errorMessage, isPhoneNumberVerified, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage, bool? isPhoneNumberVerified,
            String? phoneNumber)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(errorMessage, isPhoneNumberVerified, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PhoneNumberAuthPageState {
  const factory _Initial(
      {final String? errorMessage,
      final bool? isPhoneNumberVerified,
      final String? phoneNumber}) = _$_Initial;

  @override
  String? get errorMessage;
  @override
  bool? get isPhoneNumberVerified;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
