import 'package:json_annotation/json_annotation.dart';

part 'payment_platinum_request_model.g.dart';

@JsonSerializable()
class PaymentPlatinumRequestModel {
  String? email;

  PaymentPlatinumRequestModel({this.email});

  factory PaymentPlatinumRequestModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentPlatinumRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentPlatinumRequestModelToJson(this);
}
