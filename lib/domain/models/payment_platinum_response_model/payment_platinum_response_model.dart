import 'package:json_annotation/json_annotation.dart';

part 'payment_platinum_response_model.g.dart';

@JsonSerializable()
class PaymentPlatinumResponseModel {
  String? url;

  PaymentPlatinumResponseModel({this.url});

  factory PaymentPlatinumResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentPlatinumResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentPlatinumResponseModelToJson(this);
}
