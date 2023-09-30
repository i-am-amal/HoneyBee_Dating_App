// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_number_auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpNumberAuthPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? otpNumber) otpLogin,
    required TResult Function(int? timer) startTimer,
    required TResult Function(String? otp) setOtp,
    required TResult Function(String phoneNumber, String countryCode)
        initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? otpNumber)? otpLogin,
    TResult? Function(int? timer)? startTimer,
    TResult? Function(String? otp)? setOtp,
    TResult? Function(String phoneNumber, String countryCode)? initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? otpNumber)? otpLogin,
    TResult Function(int? timer)? startTimer,
    TResult Function(String? otp)? setOtp,
    TResult Function(String phoneNumber, String countryCode)? initializePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_SetOtp value) setOtp,
    required TResult Function(_InitializePage value) initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_SetOtp value)? setOtp,
    TResult? Function(_InitializePage value)? initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_SetOtp value)? setOtp,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpNumberAuthPageEventCopyWith<$Res> {
  factory $OtpNumberAuthPageEventCopyWith(OtpNumberAuthPageEvent value,
          $Res Function(OtpNumberAuthPageEvent) then) =
      _$OtpNumberAuthPageEventCopyWithImpl<$Res, OtpNumberAuthPageEvent>;
}

/// @nodoc
class _$OtpNumberAuthPageEventCopyWithImpl<$Res,
        $Val extends OtpNumberAuthPageEvent>
    implements $OtpNumberAuthPageEventCopyWith<$Res> {
  _$OtpNumberAuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OtpLoginCopyWith<$Res> {
  factory _$$_OtpLoginCopyWith(
          _$_OtpLogin value, $Res Function(_$_OtpLogin) then) =
      __$$_OtpLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otpNumber});
}

/// @nodoc
class __$$_OtpLoginCopyWithImpl<$Res>
    extends _$OtpNumberAuthPageEventCopyWithImpl<$Res, _$_OtpLogin>
    implements _$$_OtpLoginCopyWith<$Res> {
  __$$_OtpLoginCopyWithImpl(
      _$_OtpLogin _value, $Res Function(_$_OtpLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpNumber = freezed,
  }) {
    return _then(_$_OtpLogin(
      otpNumber: freezed == otpNumber
          ? _value.otpNumber
          : otpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OtpLogin implements _OtpLogin {
  const _$_OtpLogin({this.otpNumber});

  @override
  final String? otpNumber;

  @override
  String toString() {
    return 'OtpNumberAuthPageEvent.otpLogin(otpNumber: $otpNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpLogin &&
            (identical(other.otpNumber, otpNumber) ||
                other.otpNumber == otpNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpLoginCopyWith<_$_OtpLogin> get copyWith =>
      __$$_OtpLoginCopyWithImpl<_$_OtpLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? otpNumber) otpLogin,
    required TResult Function(int? timer) startTimer,
    required TResult Function(String? otp) setOtp,
    required TResult Function(String phoneNumber, String countryCode)
        initializePage,
  }) {
    return otpLogin(otpNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? otpNumber)? otpLogin,
    TResult? Function(int? timer)? startTimer,
    TResult? Function(String? otp)? setOtp,
    TResult? Function(String phoneNumber, String countryCode)? initializePage,
  }) {
    return otpLogin?.call(otpNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? otpNumber)? otpLogin,
    TResult Function(int? timer)? startTimer,
    TResult Function(String? otp)? setOtp,
    TResult Function(String phoneNumber, String countryCode)? initializePage,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(otpNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_SetOtp value) setOtp,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return otpLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_SetOtp value)? setOtp,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return otpLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_SetOtp value)? setOtp,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(this);
    }
    return orElse();
  }
}

abstract class _OtpLogin implements OtpNumberAuthPageEvent {
  const factory _OtpLogin({final String? otpNumber}) = _$_OtpLogin;

  String? get otpNumber;
  @JsonKey(ignore: true)
  _$$_OtpLoginCopyWith<_$_OtpLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartTimerCopyWith<$Res> {
  factory _$$_StartTimerCopyWith(
          _$_StartTimer value, $Res Function(_$_StartTimer) then) =
      __$$_StartTimerCopyWithImpl<$Res>;
  @useResult
  $Res call({int? timer});
}

/// @nodoc
class __$$_StartTimerCopyWithImpl<$Res>
    extends _$OtpNumberAuthPageEventCopyWithImpl<$Res, _$_StartTimer>
    implements _$$_StartTimerCopyWith<$Res> {
  __$$_StartTimerCopyWithImpl(
      _$_StartTimer _value, $Res Function(_$_StartTimer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = freezed,
  }) {
    return _then(_$_StartTimer(
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_StartTimer implements _StartTimer {
  const _$_StartTimer({this.timer});

  @override
  final int? timer;

  @override
  String toString() {
    return 'OtpNumberAuthPageEvent.startTimer(timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTimer &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartTimerCopyWith<_$_StartTimer> get copyWith =>
      __$$_StartTimerCopyWithImpl<_$_StartTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? otpNumber) otpLogin,
    required TResult Function(int? timer) startTimer,
    required TResult Function(String? otp) setOtp,
    required TResult Function(String phoneNumber, String countryCode)
        initializePage,
  }) {
    return startTimer(timer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? otpNumber)? otpLogin,
    TResult? Function(int? timer)? startTimer,
    TResult? Function(String? otp)? setOtp,
    TResult? Function(String phoneNumber, String countryCode)? initializePage,
  }) {
    return startTimer?.call(timer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? otpNumber)? otpLogin,
    TResult Function(int? timer)? startTimer,
    TResult Function(String? otp)? setOtp,
    TResult Function(String phoneNumber, String countryCode)? initializePage,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(timer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_SetOtp value) setOtp,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_SetOtp value)? setOtp,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_SetOtp value)? setOtp,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class _StartTimer implements OtpNumberAuthPageEvent {
  const factory _StartTimer({final int? timer}) = _$_StartTimer;

  int? get timer;
  @JsonKey(ignore: true)
  _$$_StartTimerCopyWith<_$_StartTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetOtpCopyWith<$Res> {
  factory _$$_SetOtpCopyWith(_$_SetOtp value, $Res Function(_$_SetOtp) then) =
      __$$_SetOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$_SetOtpCopyWithImpl<$Res>
    extends _$OtpNumberAuthPageEventCopyWithImpl<$Res, _$_SetOtp>
    implements _$$_SetOtpCopyWith<$Res> {
  __$$_SetOtpCopyWithImpl(_$_SetOtp _value, $Res Function(_$_SetOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$_SetOtp(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetOtp implements _SetOtp {
  const _$_SetOtp({this.otp});

  @override
  final String? otp;

  @override
  String toString() {
    return 'OtpNumberAuthPageEvent.setOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetOtp &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetOtpCopyWith<_$_SetOtp> get copyWith =>
      __$$_SetOtpCopyWithImpl<_$_SetOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? otpNumber) otpLogin,
    required TResult Function(int? timer) startTimer,
    required TResult Function(String? otp) setOtp,
    required TResult Function(String phoneNumber, String countryCode)
        initializePage,
  }) {
    return setOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? otpNumber)? otpLogin,
    TResult? Function(int? timer)? startTimer,
    TResult? Function(String? otp)? setOtp,
    TResult? Function(String phoneNumber, String countryCode)? initializePage,
  }) {
    return setOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? otpNumber)? otpLogin,
    TResult Function(int? timer)? startTimer,
    TResult Function(String? otp)? setOtp,
    TResult Function(String phoneNumber, String countryCode)? initializePage,
    required TResult orElse(),
  }) {
    if (setOtp != null) {
      return setOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_SetOtp value) setOtp,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return setOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_SetOtp value)? setOtp,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return setOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_SetOtp value)? setOtp,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (setOtp != null) {
      return setOtp(this);
    }
    return orElse();
  }
}

abstract class _SetOtp implements OtpNumberAuthPageEvent {
  const factory _SetOtp({final String? otp}) = _$_SetOtp;

  String? get otp;
  @JsonKey(ignore: true)
  _$$_SetOtpCopyWith<_$_SetOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializePageCopyWith<$Res> {
  factory _$$_InitializePageCopyWith(
          _$_InitializePage value, $Res Function(_$_InitializePage) then) =
      __$$_InitializePageCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String countryCode});
}

/// @nodoc
class __$$_InitializePageCopyWithImpl<$Res>
    extends _$OtpNumberAuthPageEventCopyWithImpl<$Res, _$_InitializePage>
    implements _$$_InitializePageCopyWith<$Res> {
  __$$_InitializePageCopyWithImpl(
      _$_InitializePage _value, $Res Function(_$_InitializePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? countryCode = null,
  }) {
    return _then(_$_InitializePage(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitializePage implements _InitializePage {
  const _$_InitializePage(
      {required this.phoneNumber, required this.countryCode});

  @override
  final String phoneNumber;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'OtpNumberAuthPageEvent.initializePage(phoneNumber: $phoneNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializePage &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializePageCopyWith<_$_InitializePage> get copyWith =>
      __$$_InitializePageCopyWithImpl<_$_InitializePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? otpNumber) otpLogin,
    required TResult Function(int? timer) startTimer,
    required TResult Function(String? otp) setOtp,
    required TResult Function(String phoneNumber, String countryCode)
        initializePage,
  }) {
    return initializePage(phoneNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? otpNumber)? otpLogin,
    TResult? Function(int? timer)? startTimer,
    TResult? Function(String? otp)? setOtp,
    TResult? Function(String phoneNumber, String countryCode)? initializePage,
  }) {
    return initializePage?.call(phoneNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? otpNumber)? otpLogin,
    TResult Function(int? timer)? startTimer,
    TResult Function(String? otp)? setOtp,
    TResult Function(String phoneNumber, String countryCode)? initializePage,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage(phoneNumber, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_SetOtp value) setOtp,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return initializePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_SetOtp value)? setOtp,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return initializePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_SetOtp value)? setOtp,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage(this);
    }
    return orElse();
  }
}

abstract class _InitializePage implements OtpNumberAuthPageEvent {
  const factory _InitializePage(
      {required final String phoneNumber,
      required final String countryCode}) = _$_InitializePage;

  String get phoneNumber;
  String get countryCode;
  @JsonKey(ignore: true)
  _$$_InitializePageCopyWith<_$_InitializePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpNumberAuthPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isOtpVerified => throw _privateConstructorUsedError;
  String? get redirectPage => throw _privateConstructorUsedError;
  int? get timer => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)?
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
  $OtpNumberAuthPageStateCopyWith<OtpNumberAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpNumberAuthPageStateCopyWith<$Res> {
  factory $OtpNumberAuthPageStateCopyWith(OtpNumberAuthPageState value,
          $Res Function(OtpNumberAuthPageState) then) =
      _$OtpNumberAuthPageStateCopyWithImpl<$Res, OtpNumberAuthPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isOtpVerified,
      String? redirectPage,
      int? timer,
      String? otp,
      String? phoneNumber,
      String? countryCode});
}

/// @nodoc
class _$OtpNumberAuthPageStateCopyWithImpl<$Res,
        $Val extends OtpNumberAuthPageState>
    implements $OtpNumberAuthPageStateCopyWith<$Res> {
  _$OtpNumberAuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isOtpVerified = freezed,
    Object? redirectPage = freezed,
    Object? timer = freezed,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtpVerified: freezed == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      redirectPage: freezed == redirectPage
          ? _value.redirectPage
          : redirectPage // ignore: cast_nullable_to_non_nullable
              as String?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OtpNumberAuthPageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isOtpVerified,
      String? redirectPage,
      int? timer,
      String? otp,
      String? phoneNumber,
      String? countryCode});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OtpNumberAuthPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isOtpVerified = freezed,
    Object? redirectPage = freezed,
    Object? timer = freezed,
    Object? otp = freezed,
    Object? phoneNumber = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$_Initial(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtpVerified: freezed == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      redirectPage: freezed == redirectPage
          ? _value.redirectPage
          : redirectPage // ignore: cast_nullable_to_non_nullable
              as String?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.errorMessage,
      this.isOtpVerified,
      this.redirectPage,
      this.timer,
      this.otp,
      this.phoneNumber,
      this.countryCode});

  @override
  final String? errorMessage;
  @override
  final bool? isOtpVerified;
  @override
  final String? redirectPage;
  @override
  final int? timer;
  @override
  final String? otp;
  @override
  final String? phoneNumber;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'OtpNumberAuthPageState.initial(errorMessage: $errorMessage, isOtpVerified: $isOtpVerified, redirectPage: $redirectPage, timer: $timer, otp: $otp, phoneNumber: $phoneNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isOtpVerified, isOtpVerified) ||
                other.isOtpVerified == isOtpVerified) &&
            (identical(other.redirectPage, redirectPage) ||
                other.redirectPage == redirectPage) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, isOtpVerified,
      redirectPage, timer, otp, phoneNumber, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)
        initial,
  }) {
    return initial(errorMessage, isOtpVerified, redirectPage, timer, otp,
        phoneNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)?
        initial,
  }) {
    return initial?.call(errorMessage, isOtpVerified, redirectPage, timer, otp,
        phoneNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            bool? isOtpVerified,
            String? redirectPage,
            int? timer,
            String? otp,
            String? phoneNumber,
            String? countryCode)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(errorMessage, isOtpVerified, redirectPage, timer, otp,
          phoneNumber, countryCode);
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

abstract class _Initial implements OtpNumberAuthPageState {
  const factory _Initial(
      {final String? errorMessage,
      final bool? isOtpVerified,
      final String? redirectPage,
      final int? timer,
      final String? otp,
      final String? phoneNumber,
      final String? countryCode}) = _$_Initial;

  @override
  String? get errorMessage;
  @override
  bool? get isOtpVerified;
  @override
  String? get redirectPage;
  @override
  int? get timer;
  @override
  String? get otp;
  @override
  String? get phoneNumber;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
