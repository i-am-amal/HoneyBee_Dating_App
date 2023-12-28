import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/domain/models/like_user_request_model/like_user_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc() : super(DiscoverPageState.initial()) {
    //--------------->>>-----Fetch Discover Page Data----->>>------------------------

    on<_FetchDiscoverData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.discover();

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.profiles != null) {
          emit(state.copyWith(isLoading: false));

          emit(state.copyWith(profile: success));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>----- Like User Event----->>>------------------------

    on<_LikeUserEvent>((event, emit) async {
      LikeUserRequestModel request = LikeUserRequestModel(user: event.userId);

      final result = await ApiServices.likeUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(userId: success.id));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    //--------------->>>-----Dislike User Event----->>>------------------------

    on<_DislikeUserEvent>((event, emit) async {
      DislikeUserRequestModel request =
          DislikeUserRequestModel(user: event.userId);

      final result = await ApiServices.dislikeUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(userId: success.id));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>-----Sync Page Data Event----->>>------------------------

    on<_SyncEvent>((event, emit) {
      emit(state.copyWith(updateState: true));
      emit(state.copyWith(updateState: null));
    });
  }
}
