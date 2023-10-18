part of 'location_auth_page_bloc.dart';

@freezed
class LocationAuthPageEvent with _$LocationAuthPageEvent {
  const factory LocationAuthPageEvent.fetchLocationName() =
      _FetchLocationName;
}
