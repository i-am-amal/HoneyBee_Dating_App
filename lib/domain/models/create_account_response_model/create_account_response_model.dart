import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'create_account_response_model.g.dart';

@JsonSerializable()
class CreateAccountResponseModel {
  bool? success;
  String? redirect;
  User? user;
  String? token;

  CreateAccountResponseModel({
    this.success,
    this.redirect,
    this.user,
    this.token,
  });

  factory CreateAccountResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CreateAccountResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateAccountResponseModelToJson(this);
}
