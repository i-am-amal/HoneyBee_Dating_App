part of 'get_all_message_bloc.dart';

@freezed
class GetAllMessageEvent with _$GetAllMessageEvent {
  const factory GetAllMessageEvent.started() = _Started;
}