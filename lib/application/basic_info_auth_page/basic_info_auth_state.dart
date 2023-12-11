part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthState with _$BasicInfoAuthState {
  const factory BasicInfoAuthState.initial({
    XFile? pickedImage,
    String? fullNameErrorMsg,
    String? emailErrorMsg,
    String? birthdayErrorMsg,
    bool? isValidated,
  }) = _Initial;
}

