// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFilterRequestModel _$SearchFilterRequestModelFromJson(
        Map<String, dynamic> json) =>
    SearchFilterRequestModel(
      fullName: json['fullName'] as String?,
      faith: json['faith'] as String?,
      realationshipStatus: json['realationshipStatus'] as String?,
      location: json['location'] as String?,
      drinking: json['drinking'] as String?,
      smoking: json['smoking'] as String?,
      ageMin: json['ageMin'] as int?,
      ageMax: json['ageMax'] as int?,
    );

Map<String, dynamic> _$SearchFilterRequestModelToJson(
        SearchFilterRequestModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'faith': instance.faith,
      'realationshipStatus': instance.realationshipStatus,
      'location': instance.location,
      'drinking': instance.drinking,
      'smoking': instance.smoking,
      'ageMin': instance.ageMin,
      'ageMax': instance.ageMax,
    };
