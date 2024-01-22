part of 'chat_page_bloc.dart';

@freezed
class ChatPageEvent with _$ChatPageEvent {
  const factory ChatPageEvent.newMessage(
    String? controllerValue,
    String? senderId,
    String? receiverId,
    String? conversationId,
  ) = _NewMessage;

  const factory ChatPageEvent.getAllMessageOfUser(
    String? senderId,
    String? receiverId,
  ) = _GetAllMessageOfUser;

  const factory ChatPageEvent.initializeGetAllMessagePage(
    String? senderId,
    String? receiverId,
  ) = _InitializeGetAllMessagePage;




// const factory ChatPageEvent.getLastMessage(
//     String? senderId,
//     String? receiverId,
//   ) = _GetLastMessage;


}
