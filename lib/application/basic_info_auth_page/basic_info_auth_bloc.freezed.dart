// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicInfoAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function(String? fullName, String? email, String? birthday)
        nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function(String? fullName, String? email, String? birthday)?
        nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function(String? fullName, String? email, String? birthday)?
        nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_NextPage value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_NextPage value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoAuthEventCopyWith<$Res> {
  factory $BasicInfoAuthEventCopyWith(
          BasicInfoAuthEvent value, $Res Function(BasicInfoAuthEvent) then) =
      _$BasicInfoAuthEventCopyWithImpl<$Res, BasicInfoAuthEvent>;
}

/// @nodoc
class _$BasicInfoAuthEventCopyWithImpl<$Res, $Val extends BasicInfoAuthEvent>
    implements $BasicInfoAuthEventCopyWith<$Res> {
  _$BasicInfoAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PickImageCopyWith<$Res> {
  factory _$$_PickImageCopyWith(
          _$_PickImage value, $Res Function(_$_PickImage) then) =
      __$$_PickImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickImageCopyWithImpl<$Res>
    extends _$BasicInfoAuthEventCopyWithImpl<$Res, _$_PickImage>
    implements _$$_PickImageCopyWith<$Res> {
  __$$_PickImageCopyWithImpl(
      _$_PickImage _value, $Res Function(_$_PickImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PickImage implements _PickImage {
  const _$_PickImage();

  @override
  String toString() {
    return 'BasicInfoAuthEvent.pickImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function(String? fullName, String? email, String? birthday)
        nextPage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function(String? fullName, String? email, String? birthday)?
        nextPage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function(String? fullName, String? email, String? birthday)?
        nextPage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_NextPage value) nextPage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_NextPage value)? nextPage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements BasicInfoAuthEvent {
  const factory _PickImage() = _$_PickImage;
}

/// @nodoc
abstract class _$$_NextPageCopyWith<$Res> {
  factory _$$_NextPageCopyWith(
          _$_NextPage value, $Res Function(_$_NextPage) then) =
      __$$_NextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({String? fullName, String? email, String? birthday});
}

/// @nodoc
class __$$_NextPageCopyWithImpl<$Res>
    extends _$BasicInfoAuthEventCopyWithImpl<$Res, _$_NextPage>
    implements _$$_NextPageCopyWith<$Res> {
  __$$_NextPageCopyWithImpl(
      _$_NextPage _value, $Res Function(_$_NextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$_NextPage(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NextPage implements _NextPage {
  const _$_NextPage({this.fullName, this.email, this.birthday});

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? birthday;

  @override
  String toString() {
    return 'BasicInfoAuthEvent.nextPage(fullName: $fullName, email: $email, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPage &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, email, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextPageCopyWith<_$_NextPage> get copyWith =>
      __$$_NextPageCopyWithImpl<_$_NextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImage,
    required TResult Function(String? fullName, String? email, String? birthday)
        nextPage,
  }) {
    return nextPage(fullName, email, birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImage,
    TResult? Function(String? fullName, String? email, String? birthday)?
        nextPage,
  }) {
    return nextPage?.call(fullName, email, birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImage,
    TResult Function(String? fullName, String? email, String? birthday)?
        nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(fullName, email, birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_NextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_NextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_NextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements BasicInfoAuthEvent {
  const factory _NextPage(
      {final String? fullName,
      final String? email,
      final String? birthday}) = _$_NextPage;

  String? get fullName;
  String? get email;
  String? get birthday;
  @JsonKey(ignore: true)
  _$$_NextPageCopyWith<_$_NextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasicInfoAuthState {
  XFile? get pickedImage => throw _privateConstructorUsedError;
  String? get fullNameErrorMsg => throw _privateConstructorUsedError;
  String? get emailErrorMsg => throw _privateConstructorUsedError;
  String? get birthdayErrorMsg => throw _privateConstructorUsedError;
  bool? get isValidated => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)?
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
  $BasicInfoAuthStateCopyWith<BasicInfoAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoAuthStateCopyWith<$Res> {
  factory $BasicInfoAuthStateCopyWith(
          BasicInfoAuthState value, $Res Function(BasicInfoAuthState) then) =
      _$BasicInfoAuthStateCopyWithImpl<$Res, BasicInfoAuthState>;
  @useResult
  $Res call(
      {XFile? pickedImage,
      String? fullNameErrorMsg,
      String? emailErrorMsg,
      String? birthdayErrorMsg,
      bool? isValidated});
}

/// @nodoc
class _$BasicInfoAuthStateCopyWithImpl<$Res, $Val extends BasicInfoAuthState>
    implements $BasicInfoAuthStateCopyWith<$Res> {
  _$BasicInfoAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImage = freezed,
    Object? fullNameErrorMsg = freezed,
    Object? emailErrorMsg = freezed,
    Object? birthdayErrorMsg = freezed,
    Object? isValidated = freezed,
  }) {
    return _then(_value.copyWith(
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      fullNameErrorMsg: freezed == fullNameErrorMsg
          ? _value.fullNameErrorMsg
          : fullNameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      emailErrorMsg: freezed == emailErrorMsg
          ? _value.emailErrorMsg
          : emailErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayErrorMsg: freezed == birthdayErrorMsg
          ? _value.birthdayErrorMsg
          : birthdayErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidated: freezed == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $BasicInfoAuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {XFile? pickedImage,
      String? fullNameErrorMsg,
      String? emailErrorMsg,
      String? birthdayErrorMsg,
      bool? isValidated});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BasicInfoAuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImage = freezed,
    Object? fullNameErrorMsg = freezed,
    Object? emailErrorMsg = freezed,
    Object? birthdayErrorMsg = freezed,
    Object? isValidated = freezed,
  }) {
    return _then(_$_Initial(
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      fullNameErrorMsg: freezed == fullNameErrorMsg
          ? _value.fullNameErrorMsg
          : fullNameErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      emailErrorMsg: freezed == emailErrorMsg
          ? _value.emailErrorMsg
          : emailErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayErrorMsg: freezed == birthdayErrorMsg
          ? _value.birthdayErrorMsg
          : birthdayErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidated: freezed == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.pickedImage,
      this.fullNameErrorMsg,
      this.emailErrorMsg,
      this.birthdayErrorMsg,
      this.isValidated});

  @override
  final XFile? pickedImage;
  @override
  final String? fullNameErrorMsg;
  @override
  final String? emailErrorMsg;
  @override
  final String? birthdayErrorMsg;
  @override
  final bool? isValidated;

  @override
  String toString() {
    return 'BasicInfoAuthState.initial(pickedImage: $pickedImage, fullNameErrorMsg: $fullNameErrorMsg, emailErrorMsg: $emailErrorMsg, birthdayErrorMsg: $birthdayErrorMsg, isValidated: $isValidated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.pickedImage, pickedImage) ||
                other.pickedImage == pickedImage) &&
            (identical(other.fullNameErrorMsg, fullNameErrorMsg) ||
                other.fullNameErrorMsg == fullNameErrorMsg) &&
            (identical(other.emailErrorMsg, emailErrorMsg) ||
                other.emailErrorMsg == emailErrorMsg) &&
            (identical(other.birthdayErrorMsg, birthdayErrorMsg) ||
                other.birthdayErrorMsg == birthdayErrorMsg) &&
            (identical(other.isValidated, isValidated) ||
                other.isValidated == isValidated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickedImage, fullNameErrorMsg,
      emailErrorMsg, birthdayErrorMsg, isValidated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)
        initial,
  }) {
    return initial(pickedImage, fullNameErrorMsg, emailErrorMsg,
        birthdayErrorMsg, isValidated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)?
        initial,
  }) {
    return initial?.call(pickedImage, fullNameErrorMsg, emailErrorMsg,
        birthdayErrorMsg, isValidated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? pickedImage, String? fullNameErrorMsg,
            String? emailErrorMsg, String? birthdayErrorMsg, bool? isValidated)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pickedImage, fullNameErrorMsg, emailErrorMsg,
          birthdayErrorMsg, isValidated);
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

abstract class _Initial implements BasicInfoAuthState {
  const factory _Initial(
      {final XFile? pickedImage,
      final String? fullNameErrorMsg,
      final String? emailErrorMsg,
      final String? birthdayErrorMsg,
      final bool? isValidated}) = _$_Initial;

  @override
  XFile? get pickedImage;
  @override
  String? get fullNameErrorMsg;
  @override
  String? get emailErrorMsg;
  @override
  String? get birthdayErrorMsg;
  @override
  bool? get isValidated;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
