// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_account_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateAccountPageEvent {
  EditProfileModel get editProfileDetails => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileModel editProfileDetails)
        updateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileModel editProfileDetails)? updateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileModel editProfileDetails)? updateAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAccount value) updateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAccount value)? updateAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAccount value)? updateAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAccountPageEventCopyWith<UpdateAccountPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountPageEventCopyWith<$Res> {
  factory $UpdateAccountPageEventCopyWith(UpdateAccountPageEvent value,
          $Res Function(UpdateAccountPageEvent) then) =
      _$UpdateAccountPageEventCopyWithImpl<$Res, UpdateAccountPageEvent>;
  @useResult
  $Res call({EditProfileModel editProfileDetails});
}

/// @nodoc
class _$UpdateAccountPageEventCopyWithImpl<$Res,
        $Val extends UpdateAccountPageEvent>
    implements $UpdateAccountPageEventCopyWith<$Res> {
  _$UpdateAccountPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileDetails = null,
  }) {
    return _then(_value.copyWith(
      editProfileDetails: null == editProfileDetails
          ? _value.editProfileDetails
          : editProfileDetails // ignore: cast_nullable_to_non_nullable
              as EditProfileModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAccountCopyWith<$Res>
    implements $UpdateAccountPageEventCopyWith<$Res> {
  factory _$$_UpdateAccountCopyWith(
          _$_UpdateAccount value, $Res Function(_$_UpdateAccount) then) =
      __$$_UpdateAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditProfileModel editProfileDetails});
}

/// @nodoc
class __$$_UpdateAccountCopyWithImpl<$Res>
    extends _$UpdateAccountPageEventCopyWithImpl<$Res, _$_UpdateAccount>
    implements _$$_UpdateAccountCopyWith<$Res> {
  __$$_UpdateAccountCopyWithImpl(
      _$_UpdateAccount _value, $Res Function(_$_UpdateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileDetails = null,
  }) {
    return _then(_$_UpdateAccount(
      editProfileDetails: null == editProfileDetails
          ? _value.editProfileDetails
          : editProfileDetails // ignore: cast_nullable_to_non_nullable
              as EditProfileModel,
    ));
  }
}

/// @nodoc

class _$_UpdateAccount implements _UpdateAccount {
  const _$_UpdateAccount({required this.editProfileDetails});

  @override
  final EditProfileModel editProfileDetails;

  @override
  String toString() {
    return 'UpdateAccountPageEvent.updateAccount(editProfileDetails: $editProfileDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccount &&
            (identical(other.editProfileDetails, editProfileDetails) ||
                other.editProfileDetails == editProfileDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editProfileDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountCopyWith<_$_UpdateAccount> get copyWith =>
      __$$_UpdateAccountCopyWithImpl<_$_UpdateAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileModel editProfileDetails)
        updateAccount,
  }) {
    return updateAccount(editProfileDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileModel editProfileDetails)? updateAccount,
  }) {
    return updateAccount?.call(editProfileDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileModel editProfileDetails)? updateAccount,
    required TResult orElse(),
  }) {
    if (updateAccount != null) {
      return updateAccount(editProfileDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAccount value) updateAccount,
  }) {
    return updateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAccount value)? updateAccount,
  }) {
    return updateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAccount value)? updateAccount,
    required TResult orElse(),
  }) {
    if (updateAccount != null) {
      return updateAccount(this);
    }
    return orElse();
  }
}

abstract class _UpdateAccount implements UpdateAccountPageEvent {
  const factory _UpdateAccount(
      {required final EditProfileModel editProfileDetails}) = _$_UpdateAccount;

  @override
  EditProfileModel get editProfileDetails;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountCopyWith<_$_UpdateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateAccountPageState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  EditProfileModel? get editProfileDetails =>
      throw _privateConstructorUsedError;
  bool? get navigationState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAccountPageStateCopyWith<UpdateAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountPageStateCopyWith<$Res> {
  factory $UpdateAccountPageStateCopyWith(UpdateAccountPageState value,
          $Res Function(UpdateAccountPageState) then) =
      _$UpdateAccountPageStateCopyWithImpl<$Res, UpdateAccountPageState>;
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      EditProfileModel? editProfileDetails,
      bool? navigationState});
}

/// @nodoc
class _$UpdateAccountPageStateCopyWithImpl<$Res,
        $Val extends UpdateAccountPageState>
    implements $UpdateAccountPageStateCopyWith<$Res> {
  _$UpdateAccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? editProfileDetails = freezed,
    Object? navigationState = freezed,
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
      editProfileDetails: freezed == editProfileDetails
          ? _value.editProfileDetails
          : editProfileDetails // ignore: cast_nullable_to_non_nullable
              as EditProfileModel?,
      navigationState: freezed == navigationState
          ? _value.navigationState
          : navigationState // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAccountPageStateCopyWith<$Res>
    implements $UpdateAccountPageStateCopyWith<$Res> {
  factory _$$_UpdateAccountPageStateCopyWith(_$_UpdateAccountPageState value,
          $Res Function(_$_UpdateAccountPageState) then) =
      __$$_UpdateAccountPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      bool? isLoading,
      EditProfileModel? editProfileDetails,
      bool? navigationState});
}

/// @nodoc
class __$$_UpdateAccountPageStateCopyWithImpl<$Res>
    extends _$UpdateAccountPageStateCopyWithImpl<$Res,
        _$_UpdateAccountPageState>
    implements _$$_UpdateAccountPageStateCopyWith<$Res> {
  __$$_UpdateAccountPageStateCopyWithImpl(_$_UpdateAccountPageState _value,
      $Res Function(_$_UpdateAccountPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? editProfileDetails = freezed,
    Object? navigationState = freezed,
  }) {
    return _then(_$_UpdateAccountPageState(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      editProfileDetails: freezed == editProfileDetails
          ? _value.editProfileDetails
          : editProfileDetails // ignore: cast_nullable_to_non_nullable
              as EditProfileModel?,
      navigationState: freezed == navigationState
          ? _value.navigationState
          : navigationState // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UpdateAccountPageState implements _UpdateAccountPageState {
  const _$_UpdateAccountPageState(
      {this.errorMessage,
      this.isLoading,
      this.editProfileDetails,
      this.navigationState});

  @override
  final String? errorMessage;
  @override
  final bool? isLoading;
  @override
  final EditProfileModel? editProfileDetails;
  @override
  final bool? navigationState;

  @override
  String toString() {
    return 'UpdateAccountPageState(errorMessage: $errorMessage, isLoading: $isLoading, editProfileDetails: $editProfileDetails, navigationState: $navigationState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccountPageState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.editProfileDetails, editProfileDetails) ||
                other.editProfileDetails == editProfileDetails) &&
            (identical(other.navigationState, navigationState) ||
                other.navigationState == navigationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, isLoading,
      editProfileDetails, navigationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountPageStateCopyWith<_$_UpdateAccountPageState> get copyWith =>
      __$$_UpdateAccountPageStateCopyWithImpl<_$_UpdateAccountPageState>(
          this, _$identity);
}

abstract class _UpdateAccountPageState implements UpdateAccountPageState {
  const factory _UpdateAccountPageState(
      {final String? errorMessage,
      final bool? isLoading,
      final EditProfileModel? editProfileDetails,
      final bool? navigationState}) = _$_UpdateAccountPageState;

  @override
  String? get errorMessage;
  @override
  bool? get isLoading;
  @override
  EditProfileModel? get editProfileDetails;
  @override
  bool? get navigationState;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountPageStateCopyWith<_$_UpdateAccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
