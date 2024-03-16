import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/last_message_response_model/last_message_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';

part 'all_messages_event.dart';
part 'all_messages_state.dart';
part 'all_messages_bloc.freezed.dart';

class AllMessagesBloc extends Bloc<AllMessagesEvent, AllMessagesState> {
  AllMessagesBloc() : super(const _Initial()) {
    on<_LoadConversationIds>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getMatchesData();

      String? userId =await getuserIdFromPrefs();

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.profiles != null) {
          List<String>? conversationIds = [];

          for (var user in success.profiles!) {
            conversationIds.add(user.conversationId!);
          }
          emit(state.copyWith(conversationIds: conversationIds,userId:userId));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    on<_ListAllLastMessages>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      List<String> request = List<String>.from(state.conversationIds ?? []);

      final result = await ApiServices.lastMessageData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.messages.isNotEmpty) {
          emit(state.copyWith(isLoading: false));
          emit(state.copyWith(messageList: success.messages));
        } else if (success.messages.isEmpty) {
          emit(state.copyWith(messageList: [], isLoading: false));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });
  }
}
