import 'package:json_annotation/json_annotation.dart';

part 'phone_number_response_model.g.dart';

@JsonSerializable()
class PhoneNumberResponseModel {
  bool? success;

  PhoneNumberResponseModel({this.success});

  factory PhoneNumberResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberResponseModelToJson(this);
}
