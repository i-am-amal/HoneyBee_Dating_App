part of 'otp_number_auth_page_bloc.dart';

@freezed
class OtpNumberAuthPageEvent with _$OtpNumberAuthPageEvent {
  const factory OtpNumberAuthPageEvent.otpLogin({String? otpNumber}) =
      _OtpLogin;

  const factory OtpNumberAuthPageEvent.startTimer({int? timer}) = _StartTimer;

  const factory OtpNumberAuthPageEvent.setOtp({String? otp}) = _SetOtp;

  const factory OtpNumberAuthPageEvent.initializePage({required String phoneNumber,required String countryCode}) = _InitializePage;
}
