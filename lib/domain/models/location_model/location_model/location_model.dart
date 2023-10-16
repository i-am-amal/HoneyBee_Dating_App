import 'package:json_annotation/json_annotation.dart';

import '../coordinates/coordinates.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  Coord? coord;

  LocationModel({
    this.coord,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return _$LocationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
