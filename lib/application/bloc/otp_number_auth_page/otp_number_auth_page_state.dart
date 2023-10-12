part of 'otp_number_auth_page_bloc.dart';

@freezed
class OtpNumberAuthPageState with _$OtpNumberAuthPageState {
  const factory OtpNumberAuthPageState.initial({
    String? errorMessage,
    bool? isOtpVerified,
    String? token,
    String? redirectPage,
    int? timer,
    String? otp,
    String? phoneNumber,
    String? countryCode,
    String? formattedPhoneNumber,
  }) = _Initial;
}
