part of 'add_new_message_bloc.dart';

@freezed
class AddNewMessageState with _$AddNewMessageState {
  const factory AddNewMessageState({
    String? errorMessage,
    String? controllerValue,
    String? senderId,
    String? receiverId,
    String? coversationId,
    String? message,
    bool? isLoading,
  }) = _AddNewMessageState;

  factory AddNewMessageState.initial() {
    return const AddNewMessageState(isLoading: false, controllerValue: '');
  }
}
