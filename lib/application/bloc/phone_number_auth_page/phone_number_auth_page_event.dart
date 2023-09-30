part of 'phone_number_auth_page_bloc.dart';

@freezed
class PhoneNumberAuthPageEvent with _$PhoneNumberAuthPageEvent {
   const factory PhoneNumberAuthPageEvent.phoneNumberLogin({String? phoneNumber,String? countryCode}) = _PhoneNumberLogin;

      const factory PhoneNumberAuthPageEvent.setPhoneNumber({String? phoneNumber }) = _SetPhoneNumber;

}

