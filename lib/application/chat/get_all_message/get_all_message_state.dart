part of 'get_all_message_bloc.dart';

@freezed
class GetAllMessageState with _$GetAllMessageState {
  const factory GetAllMessageState({
    String? errorMessage,
    String? senderId,
    String? receiverId,
    List<GetMessageResponseModel>? message,
    bool? isLoading,
    // bool? fromSelf,
  }) = _GetAllMessageState;

  factory GetAllMessageState.initial() {
    return const GetAllMessageState(isLoading: false);
  }
}
