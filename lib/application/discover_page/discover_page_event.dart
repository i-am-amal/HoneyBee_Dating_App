part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageEvent with _$DiscoverPageEvent {
  const factory DiscoverPageEvent.fetchDiscoverData() = _FetchDiscoverData;
  const factory DiscoverPageEvent.likeUserEvent(String? userId) = _LikeUserEvent;
  const factory DiscoverPageEvent.dislikeUserEvent(String? userId) = _DislikeUserEvent;
  const factory DiscoverPageEvent.profileViewEvent() = _ProfileViewEvent;
  const factory DiscoverPageEvent.syncEvent() = _SyncEvent;
}
