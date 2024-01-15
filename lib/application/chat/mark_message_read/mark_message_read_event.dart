part of 'mark_message_read_bloc.dart';

@freezed
class MarkMessageReadEvent with _$MarkMessageReadEvent {
  const factory MarkMessageReadEvent.started() = _Started;
}