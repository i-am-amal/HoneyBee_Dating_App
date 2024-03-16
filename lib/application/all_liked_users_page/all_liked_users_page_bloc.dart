import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/all_liked_users_response_model/all_liked_users_response_model.dart';
import 'package:honeybee/domain/models/block_user_request_model/block_user_request_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'all_liked_users_page_event.dart';
part 'all_liked_users_page_state.dart';
part 'all_liked_users_page_bloc.freezed.dart';

class AllLikedUsersPageBloc
    extends Bloc<AllLikedUsersPageEvent, AllLikedUsersPageState> {
  AllLikedUsersPageBloc() : super(AllLikedUsersPageState.initial()) {
//--------------->>>-----Fetch Liked Users Data----->>>------------------------

    on<_FetchLikedUsersData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.allLikedUsersData();

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.profiles != null) {
          emit(state.copyWith(isLoading: false, profile: success));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//------------------------------Blocked users list---------------------------------

    on<_BlockedUsersData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getUserData();

      result.fold((failure) {
        //failure on Api Service
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(isLoading: false));
          emit(state.copyWith(blockedUserIds: success.blockedUsers));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>-----DisLike Users Data----->>>------------------------

    on<_DislikeEvent>((event, emit) async {
      DislikeUserRequestModel request =
          DislikeUserRequestModel(user: event.userId);

      final result = await ApiServices.dislikeUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(updateState: true, userId: success.id));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>-----Resync The Users Data Page----->>>--------------------

    on<_ResyncLikedUsersData>((event, emit) {
      emit(state.copyWith(updateState: true));
    });

//--------------->>>-----Block Users Data----->>>------------------------

    on<_BlockUserEvent>((event, emit) async {
      emit(state.copyWith(isBlocked: false));

      BlockUserRequestModel request = BlockUserRequestModel(user: event.userId);

      final result = await ApiServices.blockUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(
              isBlocked: true,
              userId: success.id,
              blockedUserIds: success.blockedUsers));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>-----Unblock Users Data----->>>------------------------

    on<_UnBlockUserEvent>((event, emit) async {
      BlockUserRequestModel request = BlockUserRequestModel(user: event.userId);
      emit(state.copyWith(isBlocked: true));

      final result = await ApiServices.blockUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(
              userId: success.id, blockedUserIds: success.blockedUsers));
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
