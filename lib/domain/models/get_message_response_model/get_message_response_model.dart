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


@JsonKey(includeFromJson: true)//waring based on ignore:true
  String get formattedTime {
    if (createdAt != null) {
      final DateTime dateTime = DateTime.parse(createdAt!);
      return DateFormat('HH:mm').format(dateTime); // Format as desired
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


  static bool get $includeToJson => false;
  static bool get $includeFromJson => false;
}
