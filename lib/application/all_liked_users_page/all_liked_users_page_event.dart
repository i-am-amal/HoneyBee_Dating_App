part of 'all_liked_users_page_bloc.dart';

@freezed
class AllLikedUsersPageEvent with _$AllLikedUsersPageEvent {
  const factory AllLikedUsersPageEvent.fetchLikedUsersData() = _FetchLikedUsersData;
}