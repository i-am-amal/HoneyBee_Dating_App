import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response_model.g.dart';

@JsonSerializable()
class VerifyOtpResponseModel {
  bool? success;
  bool? newUser;
  String? token;
  String? redirect;

  VerifyOtpResponseModel({
    this.success,
    this.newUser,
    this.token,
    this.redirect,
  });

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpResponseModelToJson(this);
}
