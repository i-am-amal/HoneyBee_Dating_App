import 'package:json_annotation/json_annotation.dart';

part 'verify_payment_request_model.g.dart';

@JsonSerializable()
class VerifyPaymentRequestModel {
  String? pack;

  VerifyPaymentRequestModel({this.pack});

  factory VerifyPaymentRequestModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyPaymentRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyPaymentRequestModelToJson(this);
}
