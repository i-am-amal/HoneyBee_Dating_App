import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_message_response_model.g.dart';

@JsonSerializable()
class GetMessageResponseModel {
  bool? fromSelf;
  String? message;
  String? messageType;
  String? createdAt;
  String? updatedAt;

  GetMessageResponseModel({
    this.fromSelf,
    this.message,
    this.messageType,
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(includeFromJson: true) //waring based on ignore
  String get formattedTime {
    if (createdAt != null) {
      final DateTime dateTime = DateTime.parse(createdAt!).toLocal();
      return DateFormat('hh:mm').format(dateTime); // Format as desired
    } else {
      return '';
    }
  }

  factory GetMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetMessageResponseModelToJson(this);

  static List<GetMessageResponseModel> fromList(List<dynamic> list) {
    return list.map((map) => GetMessageResponseModel.fromJson(map)).toList();

  }



  static Map<String, List<GetMessageResponseModel>> generateMessagesMap(List<GetMessageResponseModel> messages) {
    Map<String, List<GetMessageResponseModel>> messagesMap = {};

    for (var message in messages) {
      DateTime createdAt = DateTime.parse(message.createdAt!);
      String formattedDate = DateFormat('yyyy-MM-dd').format(createdAt);

      if (!messagesMap.containsKey(formattedDate)) {
        messagesMap[formattedDate] = [];
      }

      messagesMap[formattedDate]!.add(message);
    }

    return messagesMap;
  }


  static bool get $includeToJson => false;
  static bool get $includeFromJson => false;
}
