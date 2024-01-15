part of 'add_new_message_bloc.dart';

@freezed
class AddNewMessageEvent with _$AddNewMessageEvent {
  const factory AddNewMessageEvent.newMessage(
    String? controllerValue,
    String? senderId,
    String? receiverId,
    String? conversationId,
  ) = _NewMessage;
}
