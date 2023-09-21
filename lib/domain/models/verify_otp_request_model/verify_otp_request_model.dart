import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request_model.g.dart';

@JsonSerializable()
class VerifyOtpRequestModel {
  String? otp;
  String? phone;

  VerifyOtpRequestModel({this.otp, this.phone});

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpRequestModelToJson(this);
}
