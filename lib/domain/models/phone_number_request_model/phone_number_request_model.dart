import 'package:json_annotation/json_annotation.dart';

part 'phone_number_request_model.g.dart';

@JsonSerializable()
class PhoneNumberRequestModel {
  String? phone;

  PhoneNumberRequestModel({this.phone});

  factory PhoneNumberRequestModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberRequestModelToJson(this);
}
