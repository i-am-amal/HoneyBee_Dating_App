// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFilterResponseModel _$SearchFilterResponseModelFromJson(
        Map<String, dynamic> json) =>
    SearchFilterResponseModel(
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      birthday: json['birthday'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      location: json['location'] as String?,
      preference: json['Preference'] as String?,
      realationshipStatus: json['realationshipStatus'] as String?,
      faith: json['faith'] as String?,
      smoking: json['smoking'] as String?,
      drinking: json['drinking'] as String?,
      bio: json['bio'] as String?,
      honeyVipType: (json['HoneyVipType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isVerified: json['isVerified'] as bool?,
      blockedUsers: (json['blockedUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      likedUsers: (json['likedUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dislikedUsers: (json['dislikedUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profilePic: json['profilePic'] as String?,
      coverPic: json['coverPic'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$SearchFilterResponseModelToJson(
        SearchFilterResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
      'birthday': instance.birthday,
      'age': instance.age,
      'gender': instance.gender,
      'images': instance.images,
      'location': instance.location,
      'Preference': instance.preference,
      'realationshipStatus': instance.realationshipStatus,
      'faith': instance.faith,
      'smoking': instance.smoking,
      'drinking': instance.drinking,
      'bio': instance.bio,
      'HoneyVipType': instance.honeyVipType,
      'isVerified': instance.isVerified,
      'blockedUsers': instance.blockedUsers,
      'likedUsers': instance.likedUsers,
      'dislikedUsers': instance.dislikedUsers,
      'profilePic': instance.profilePic,
      'coverPic': instance.coverPic,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };