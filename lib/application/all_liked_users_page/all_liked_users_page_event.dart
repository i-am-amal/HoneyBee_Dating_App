part of 'all_liked_users_page_bloc.dart';

@freezed
class AllLikedUsersPageEvent with _$AllLikedUsersPageEvent {
  const factory AllLikedUsersPageEvent.fetchLikedUsersData() =
      _FetchLikedUsersData;
  const factory AllLikedUsersPageEvent.dislikeEvent(String? userId) =
      _DislikeEvent;
  const factory AllLikedUsersPageEvent.blockUserEvent(String? userId) =
      _BlockUserEvent;
  const factory AllLikedUsersPageEvent.unBlockUserEvent(String? userId) =
      _UnBlockUserEvent;
  const factory AllLikedUsersPageEvent.resyncLikedUsersData() =
      _ResyncLikedUsersData;
      const factory AllLikedUsersPageEvent.blockedUsersData() =
      _BlockedUsersData;
}
