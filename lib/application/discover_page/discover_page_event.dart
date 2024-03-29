part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageEvent with _$DiscoverPageEvent {
  const factory DiscoverPageEvent.joinUserToSocket() = _JoinUserToSocket;
  const factory DiscoverPageEvent.fetchDiscoverData() = _FetchDiscoverData;
  const factory DiscoverPageEvent.likedAndDislikedUsersData() =
      _LikedAndDislikedUsersData;
  const factory DiscoverPageEvent.likeUserEvent(String? userId) =
      _LikeUserEvent;
  const factory DiscoverPageEvent.dislikeUserEvent(String? userId) =
      _DislikeUserEvent;
  const factory DiscoverPageEvent.updateDiscoverLike(
      DiscoverResponseModel profile) = _UpdateDiscoverLike;
  const factory DiscoverPageEvent.updateDiscoverDislike(
      DiscoverResponseModel profile) = _UpdateDiscoverDislike;
  const factory DiscoverPageEvent.syncEvent() = _SyncEvent;
}
