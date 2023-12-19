part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthState with _$BasicInfoAuthState {
  const factory BasicInfoAuthState.initial({
    XFile? pickedProfileImage,
    XFile? coverProfileImage,
    XFile? pic1,
    XFile? pic2,
    XFile? pic3,
    String? fullNameErrorMsg,
    String? emailErrorMsg,
    String? birthdayErrorMsg,
    bool? isValidated,
  }) = _Initial;
}
