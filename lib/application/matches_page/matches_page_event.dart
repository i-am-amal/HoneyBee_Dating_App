part of 'matches_page_bloc.dart';

@freezed
class MatchesPageEvent with _$MatchesPageEvent {
  const factory MatchesPageEvent.fetchMatchesData() = _FetchMatchesData;
}