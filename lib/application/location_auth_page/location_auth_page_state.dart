part of 'location_auth_page_bloc.dart';

@freezed
class LocationAuthPageState with _$LocationAuthPageState {
  const factory LocationAuthPageState.initial({
    double? currentLatitude,
    double? currentLongitude,
    String? errorMessage,
  }) = _Initial;
}
