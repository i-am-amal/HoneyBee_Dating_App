// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationAuthPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocationDataEvent,
    required TResult Function(String locationName) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocationDataEvent,
    TResult? Function(String locationName)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocationDataEvent,
    TResult Function(String locationName)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchlocationDataEvent value)
        fetchlocationDataEvent,
    required TResult Function(SearchLocation value) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult? Function(SearchLocation value)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult Function(SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAuthPageEventCopyWith<$Res> {
  factory $LocationAuthPageEventCopyWith(LocationAuthPageEvent value,
          $Res Function(LocationAuthPageEvent) then) =
      _$LocationAuthPageEventCopyWithImpl<$Res, LocationAuthPageEvent>;
}

/// @nodoc
class _$LocationAuthPageEventCopyWithImpl<$Res,
        $Val extends LocationAuthPageEvent>
    implements $LocationAuthPageEventCopyWith<$Res> {
  _$LocationAuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchlocationDataEventCopyWith<$Res> {
  factory _$$_FetchlocationDataEventCopyWith(_$_FetchlocationDataEvent value,
          $Res Function(_$_FetchlocationDataEvent) then) =
      __$$_FetchlocationDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchlocationDataEventCopyWithImpl<$Res>
    extends _$LocationAuthPageEventCopyWithImpl<$Res, _$_FetchlocationDataEvent>
    implements _$$_FetchlocationDataEventCopyWith<$Res> {
  __$$_FetchlocationDataEventCopyWithImpl(_$_FetchlocationDataEvent _value,
      $Res Function(_$_FetchlocationDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchlocationDataEvent implements _FetchlocationDataEvent {
  const _$_FetchlocationDataEvent();

  @override
  String toString() {
    return 'LocationAuthPageEvent.fetchlocationDataEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchlocationDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocationDataEvent,
    required TResult Function(String locationName) searchLocation,
  }) {
    return fetchlocationDataEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocationDataEvent,
    TResult? Function(String locationName)? searchLocation,
  }) {
    return fetchlocationDataEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocationDataEvent,
    TResult Function(String locationName)? searchLocation,
    required TResult orElse(),
  }) {
    if (fetchlocationDataEvent != null) {
      return fetchlocationDataEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchlocationDataEvent value)
        fetchlocationDataEvent,
    required TResult Function(SearchLocation value) searchLocation,
  }) {
    return fetchlocationDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult? Function(SearchLocation value)? searchLocation,
  }) {
    return fetchlocationDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult Function(SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (fetchlocationDataEvent != null) {
      return fetchlocationDataEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchlocationDataEvent implements LocationAuthPageEvent {
  const factory _FetchlocationDataEvent() = _$_FetchlocationDataEvent;
}

/// @nodoc
abstract class _$$SearchLocationCopyWith<$Res> {
  factory _$$SearchLocationCopyWith(
          _$SearchLocation value, $Res Function(_$SearchLocation) then) =
      __$$SearchLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String locationName});
}

/// @nodoc
class __$$SearchLocationCopyWithImpl<$Res>
    extends _$LocationAuthPageEventCopyWithImpl<$Res, _$SearchLocation>
    implements _$$SearchLocationCopyWith<$Res> {
  __$$SearchLocationCopyWithImpl(
      _$SearchLocation _value, $Res Function(_$SearchLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = null,
  }) {
    return _then(_$SearchLocation(
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocation implements SearchLocation {
  const _$SearchLocation({required this.locationName});

  @override
  final String locationName;

  @override
  String toString() {
    return 'LocationAuthPageEvent.searchLocation(locationName: $locationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocation &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationCopyWith<_$SearchLocation> get copyWith =>
      __$$SearchLocationCopyWithImpl<_$SearchLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocationDataEvent,
    required TResult Function(String locationName) searchLocation,
  }) {
    return searchLocation(locationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocationDataEvent,
    TResult? Function(String locationName)? searchLocation,
  }) {
    return searchLocation?.call(locationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocationDataEvent,
    TResult Function(String locationName)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(locationName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchlocationDataEvent value)
        fetchlocationDataEvent,
    required TResult Function(SearchLocation value) searchLocation,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult? Function(SearchLocation value)? searchLocation,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchlocationDataEvent value)? fetchlocationDataEvent,
    TResult Function(SearchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class SearchLocation implements LocationAuthPageEvent {
  const factory SearchLocation({required final String locationName}) =
      _$SearchLocation;

  String get locationName;
  @JsonKey(ignore: true)
  _$$SearchLocationCopyWith<_$SearchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationAuthPageState {
  double? get currentLatitude => throw _privateConstructorUsedError;
  double? get currentLongitude => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)?
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
  $LocationAuthPageStateCopyWith<LocationAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAuthPageStateCopyWith<$Res> {
  factory $LocationAuthPageStateCopyWith(LocationAuthPageState value,
          $Res Function(LocationAuthPageState) then) =
      _$LocationAuthPageStateCopyWithImpl<$Res, LocationAuthPageState>;
  @useResult
  $Res call(
      {double? currentLatitude,
      double? currentLongitude,
      String? errorMessage});
}

/// @nodoc
class _$LocationAuthPageStateCopyWithImpl<$Res,
        $Val extends LocationAuthPageState>
    implements $LocationAuthPageStateCopyWith<$Res> {
  _$LocationAuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatitude = freezed,
    Object? currentLongitude = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentLatitude: freezed == currentLatitude
          ? _value.currentLatitude
          : currentLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLongitude: freezed == currentLongitude
          ? _value.currentLongitude
          : currentLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $LocationAuthPageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? currentLatitude,
      double? currentLongitude,
      String? errorMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LocationAuthPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatitude = freezed,
    Object? currentLongitude = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Initial(
      currentLatitude: freezed == currentLatitude
          ? _value.currentLatitude
          : currentLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLongitude: freezed == currentLongitude
          ? _value.currentLongitude
          : currentLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.currentLatitude, this.currentLongitude, this.errorMessage});

  @override
  final double? currentLatitude;
  @override
  final double? currentLongitude;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LocationAuthPageState.initial(currentLatitude: $currentLatitude, currentLongitude: $currentLongitude, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.currentLatitude, currentLatitude) ||
                other.currentLatitude == currentLatitude) &&
            (identical(other.currentLongitude, currentLongitude) ||
                other.currentLongitude == currentLongitude) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentLatitude, currentLongitude, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)
        initial,
  }) {
    return initial(currentLatitude, currentLongitude, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)?
        initial,
  }) {
    return initial?.call(currentLatitude, currentLongitude, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? currentLatitude, double? currentLongitude,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentLatitude, currentLongitude, errorMessage);
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

abstract class _Initial implements LocationAuthPageState {
  const factory _Initial(
      {final double? currentLatitude,
      final double? currentLongitude,
      final String? errorMessage}) = _$_Initial;

  @override
  double? get currentLatitude;
  @override
  double? get currentLongitude;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
