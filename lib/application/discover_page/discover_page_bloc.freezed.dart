// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDiscoverData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDiscoverData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDiscoverData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDiscoverData value) fetchDiscoverData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDiscoverData value)? fetchDiscoverData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDiscoverData value)? fetchDiscoverData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverPageEventCopyWith<$Res> {
  factory $DiscoverPageEventCopyWith(
          DiscoverPageEvent value, $Res Function(DiscoverPageEvent) then) =
      _$DiscoverPageEventCopyWithImpl<$Res, DiscoverPageEvent>;
}

/// @nodoc
class _$DiscoverPageEventCopyWithImpl<$Res, $Val extends DiscoverPageEvent>
    implements $DiscoverPageEventCopyWith<$Res> {
  _$DiscoverPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchDiscoverDataCopyWith<$Res> {
  factory _$$_FetchDiscoverDataCopyWith(_$_FetchDiscoverData value,
          $Res Function(_$_FetchDiscoverData) then) =
      __$$_FetchDiscoverDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchDiscoverDataCopyWithImpl<$Res>
    extends _$DiscoverPageEventCopyWithImpl<$Res, _$_FetchDiscoverData>
    implements _$$_FetchDiscoverDataCopyWith<$Res> {
  __$$_FetchDiscoverDataCopyWithImpl(
      _$_FetchDiscoverData _value, $Res Function(_$_FetchDiscoverData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchDiscoverData implements _FetchDiscoverData {
  const _$_FetchDiscoverData();

  @override
  String toString() {
    return 'DiscoverPageEvent.fetchDiscoverData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchDiscoverData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchDiscoverData,
  }) {
    return fetchDiscoverData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchDiscoverData,
  }) {
    return fetchDiscoverData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchDiscoverData,
    required TResult orElse(),
  }) {
    if (fetchDiscoverData != null) {
      return fetchDiscoverData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchDiscoverData value) fetchDiscoverData,
  }) {
    return fetchDiscoverData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchDiscoverData value)? fetchDiscoverData,
  }) {
    return fetchDiscoverData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchDiscoverData value)? fetchDiscoverData,
    required TResult orElse(),
  }) {
    if (fetchDiscoverData != null) {
      return fetchDiscoverData(this);
    }
    return orElse();
  }
}

abstract class _FetchDiscoverData implements DiscoverPageEvent {
  const factory _FetchDiscoverData() = _$_FetchDiscoverData;
}

/// @nodoc
mixin _$DiscoverPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverPageStateCopyWith<DiscoverPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverPageStateCopyWith<$Res> {
  factory $DiscoverPageStateCopyWith(
          DiscoverPageState value, $Res Function(DiscoverPageState) then) =
      _$DiscoverPageStateCopyWithImpl<$Res, DiscoverPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      String? id,
      String? name,
      int? age,
      String? profileImage});
}

/// @nodoc
class _$DiscoverPageStateCopyWithImpl<$Res, $Val extends DiscoverPageState>
    implements $DiscoverPageStateCopyWith<$Res> {
  _$DiscoverPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? profileImage = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscoverPageStateCopyWith<$Res>
    implements $DiscoverPageStateCopyWith<$Res> {
  factory _$$_DiscoverPageStateCopyWith(_$_DiscoverPageState value,
          $Res Function(_$_DiscoverPageState) then) =
      __$$_DiscoverPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      String? id,
      String? name,
      int? age,
      String? profileImage});
}

/// @nodoc
class __$$_DiscoverPageStateCopyWithImpl<$Res>
    extends _$DiscoverPageStateCopyWithImpl<$Res, _$_DiscoverPageState>
    implements _$$_DiscoverPageStateCopyWith<$Res> {
  __$$_DiscoverPageStateCopyWithImpl(
      _$_DiscoverPageState _value, $Res Function(_$_DiscoverPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_DiscoverPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DiscoverPageState implements _DiscoverPageState {
  const _$_DiscoverPageState(
      {this.errorMessage,
      this.isLoading,
      this.id,
      this.name,
      this.age,
      this.profileImage});

  @override
  final String? errorMessage;
  @override
  final bool? isLoading;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? age;
  @override
  final String? profileImage;

  @override
  String toString() {
    return 'DiscoverPageState(errorMessage: $errorMessage, isLoading: $isLoading, id: $id, name: $name, age: $age, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, isLoading, id, name, age, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverPageStateCopyWith<_$_DiscoverPageState> get copyWith =>
      __$$_DiscoverPageStateCopyWithImpl<_$_DiscoverPageState>(
          this, _$identity);
}

abstract class _DiscoverPageState implements DiscoverPageState {
  const factory _DiscoverPageState(
      {final String? errorMessage,
      final bool? isLoading,
      final String? id,
      final String? name,
      final int? age,
      final String? profileImage}) = _$_DiscoverPageState;

  @override
  String? get errorMessage;
  @override
  bool? get isLoading;
  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get age;
  @override
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverPageStateCopyWith<_$_DiscoverPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
