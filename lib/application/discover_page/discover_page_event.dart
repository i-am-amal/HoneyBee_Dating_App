// part of 'discover_page_bloc.dart';

// @freezed
// class DiscoverPageEvent with _$DiscoverPageEvent {
//   const factory DiscoverPageEvent.joinUserToSocket() = _JoinUserToSocket;
//   const factory DiscoverPageEvent.fetchDiscoverData() = _FetchDiscoverData;
//     const factory DiscoverPageEvent.likedAndDislikedUsersData() = _LikedAndDislikedUsersData;
//   const factory DiscoverPageEvent.likeUserEvent(String? userId) =
//       _LikeUserEvent;
//   const factory DiscoverPageEvent.dislikeUserEvent(String? userId) =
//       _DislikeUserEvent;
//   // const factory DiscoverPageEvent.profileViewEvent() = _ProfileViewEvent;
//   const factory DiscoverPageEvent.syncEvent() = _SyncEvent;
// }
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
      DiscoverResponseModel profilee) = _UpdateDiscoverLike;

       const factory DiscoverPageEvent.updateDiscoverDislike(
      DiscoverResponseModel profilee) = _UpdateDiscoverDislike;

  // const factory DiscoverPageEvent.profileViewEvent() = _ProfileViewEvent;
  const factory DiscoverPageEvent.syncEvent() = _SyncEvent;
}
