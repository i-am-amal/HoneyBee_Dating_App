part of 'phone_number_auth_page_bloc.dart';

@freezed
class PhoneNumberAuthPageState with _$PhoneNumberAuthPageState {
  const factory PhoneNumberAuthPageState.initial({
     String? errorMessage,
    bool? isPhoneNumberVerified,
    String? phoneNumber,

  }) = _Initial;
}
