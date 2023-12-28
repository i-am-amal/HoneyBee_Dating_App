import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailures with _$ApiFailures {
  const factory ApiFailures.clientFailure({String? errorMessage}) =
      _ClientFailure;
  const factory ApiFailures.serverFailure(
      {int? statusCode, String? errorMessage}) = _ServerFailure;
}
