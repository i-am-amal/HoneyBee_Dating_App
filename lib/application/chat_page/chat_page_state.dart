part of 'chat_page_bloc.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState({
    String? errorMessage,
    String? controllerValue,
    String? senderId,
    String? receiverId,
    String? coversationId,
    
        List<GetMessageResponseModel>? messages,

    String? message,
    bool? isLoading,
  }) = _ChatPageState;

  factory ChatPageState.initial() {
    return const ChatPageState(isLoading: false, controllerValue: '');
  }
}



 