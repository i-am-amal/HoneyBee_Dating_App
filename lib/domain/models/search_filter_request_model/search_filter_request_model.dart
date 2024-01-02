import 'package:json_annotation/json_annotation.dart';

part 'search_filter_request_model.g.dart';

@JsonSerializable()
class SearchFilterRequestModel {
  String? fullName;
  String? faith;
  String? realationshipStatus;
  String? location;
  String? drinking;
  String? smoking;
  String? ageMin;
  String? ageMax;

  SearchFilterRequestModel({
    this.fullName,
    this.faith,
    this.realationshipStatus,
    this.location,
    this.drinking,
    this.smoking,
    this.ageMin,
    this.ageMax,
  });

  factory SearchFilterRequestModel.fromJson(Map<String, dynamic> json) {
    return _$SearchFilterRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchFilterRequestModelToJson(this);
}
