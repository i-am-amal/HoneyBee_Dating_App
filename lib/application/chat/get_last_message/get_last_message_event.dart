part of 'get_last_message_bloc.dart';

@freezed
class GetLastMessageEvent with _$GetLastMessageEvent {
  const factory GetLastMessageEvent.started() = _Started;
}