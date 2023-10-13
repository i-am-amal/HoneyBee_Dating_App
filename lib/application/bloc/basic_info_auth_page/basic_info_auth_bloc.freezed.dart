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
  XFile? get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? image) basicInfoProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? image)? basicInfoProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? image)? basicInfoProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasicInfoProfileImage value)
        basicInfoProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasicInfoProfileImage value)? basicInfoProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasicInfoProfileImage value)? basicInfoProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInfoAuthEventCopyWith<BasicInfoAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoAuthEventCopyWith<$Res> {
  factory $BasicInfoAuthEventCopyWith(
          BasicInfoAuthEvent value, $Res Function(BasicInfoAuthEvent) then) =
      _$BasicInfoAuthEventCopyWithImpl<$Res, BasicInfoAuthEvent>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class _$BasicInfoAuthEventCopyWithImpl<$Res, $Val extends BasicInfoAuthEvent>
    implements $BasicInfoAuthEventCopyWith<$Res> {
  _$BasicInfoAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicInfoProfileImageCopyWith<$Res>
    implements $BasicInfoAuthEventCopyWith<$Res> {
  factory _$$_BasicInfoProfileImageCopyWith(_$_BasicInfoProfileImage value,
          $Res Function(_$_BasicInfoProfileImage) then) =
      __$$_BasicInfoProfileImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$_BasicInfoProfileImageCopyWithImpl<$Res>
    extends _$BasicInfoAuthEventCopyWithImpl<$Res, _$_BasicInfoProfileImage>
    implements _$$_BasicInfoProfileImageCopyWith<$Res> {
  __$$_BasicInfoProfileImageCopyWithImpl(_$_BasicInfoProfileImage _value,
      $Res Function(_$_BasicInfoProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_BasicInfoProfileImage(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_BasicInfoProfileImage implements _BasicInfoProfileImage {
  const _$_BasicInfoProfileImage({this.image});

  @override
  final XFile? image;

  @override
  String toString() {
    return 'BasicInfoAuthEvent.basicInfoProfileImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicInfoProfileImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicInfoProfileImageCopyWith<_$_BasicInfoProfileImage> get copyWith =>
      __$$_BasicInfoProfileImageCopyWithImpl<_$_BasicInfoProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? image) basicInfoProfileImage,
  }) {
    return basicInfoProfileImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? image)? basicInfoProfileImage,
  }) {
    return basicInfoProfileImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? image)? basicInfoProfileImage,
    required TResult orElse(),
  }) {
    if (basicInfoProfileImage != null) {
      return basicInfoProfileImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasicInfoProfileImage value)
        basicInfoProfileImage,
  }) {
    return basicInfoProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasicInfoProfileImage value)? basicInfoProfileImage,
  }) {
    return basicInfoProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasicInfoProfileImage value)? basicInfoProfileImage,
    required TResult orElse(),
  }) {
    if (basicInfoProfileImage != null) {
      return basicInfoProfileImage(this);
    }
    return orElse();
  }
}

abstract class _BasicInfoProfileImage implements BasicInfoAuthEvent {
  const factory _BasicInfoProfileImage({final XFile? image}) =
      _$_BasicInfoProfileImage;

  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$_BasicInfoProfileImageCopyWith<_$_BasicInfoProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasicInfoAuthState {
  XFile? get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? image) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? image)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? image)? initial,
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
  $Res call({XFile? image});
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
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
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
  $Res call({XFile? image});
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
    Object? image = freezed,
  }) {
    return _then(_$_Initial(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.image});

  @override
  final XFile? image;

  @override
  String toString() {
    return 'BasicInfoAuthState.initial(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(XFile? image) initial,
  }) {
    return initial(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(XFile? image)? initial,
  }) {
    return initial?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(XFile? image)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(image);
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
  const factory _Initial({final XFile? image}) = _$_Initial;

  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
