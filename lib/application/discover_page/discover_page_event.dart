part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageEvent with _$DiscoverPageEvent {
  const factory DiscoverPageEvent.fetchDiscoverData() = _FetchDiscoverData;
}
