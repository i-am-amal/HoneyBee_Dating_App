part of 'all_messages_bloc.dart';

@freezed
class AllMessagesState with _$AllMessagesState {
  const factory AllMessagesState.initial({
    String? errorMessage,
  List<LastMessageResponseModel>? messageList,
    bool? isLoading,
    List<String>? conversationIds,
    String? userId,
  }) = _Initial;
}
