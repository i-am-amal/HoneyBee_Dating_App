part of 'location_auth_page_bloc.dart';

@freezed
class LocationAuthPageEvent with _$LocationAuthPageEvent {
  const factory LocationAuthPageEvent.fetchlocationDataEvent() = _FetchlocationDataEvent;

    const factory LocationAuthPageEvent.searchLocation({
    required  String locationName,
    }) = SearchLocation;



}