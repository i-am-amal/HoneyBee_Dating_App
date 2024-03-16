part of 'all_messages_bloc.dart';

@freezed
class AllMessagesEvent with _$AllMessagesEvent {
  const factory AllMessagesEvent.loadConversationIds() = _LoadConversationIds;
  const factory AllMessagesEvent.listAllLastMessages() = _ListAllLastMessages;
}
