part of 'location_auth_page_bloc.dart';

@freezed
class LocationAuthPageState with _$LocationAuthPageState {
  const factory LocationAuthPageState({
    String? errorMessage,
    String? locationName,
    bool? isLoading,
  }) = _LocationAuthPageState;

  factory LocationAuthPageState.initial() {
    return const LocationAuthPageState(
        errorMessage: '', isLoading: false, locationName: '');
  }
}
