import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/all_liked_users_response_model/all_liked_users_response_model.dart';
import 'package:honeybee/domain/models/block_user_request_model/block_user_request_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'all_liked_users_page_event.dart';
part 'all_liked_users_page_state.dart';
part 'all_liked_users_page_bloc.freezed.dart';

class AllLikedUsersPageBloc
    extends Bloc<AllLikedUsersPageEvent, AllLikedUsersPageState> {
  AllLikedUsersPageBloc() : super(AllLikedUsersPageState.initial()) {
    on<_FetchLikedUsersData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.allLikedUsersData();

      result.fold((failure) {
        log('no response from api call in all liked page bloc');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered..');
        if (success.profiles != null) {
          log('response model  not null.....in all liked users page ...');
          emit(state.copyWith(isLoading: false));
//           log(success.profiles![0].fullName!);
//           log(success.profiles![0].id!);
          emit(state.copyWith(profile: success));
        } else {
//           // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    on<_DislikeEvent>((event, emit) async {
      DislikeUserRequestModel request =
          DislikeUserRequestModel(user: event.userId);

      final result = await ApiServices.dislikeUserData(request);
      log(result.toString());

      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>dislike the user event in liked users page>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered...disLike event...');
        if (success.id != null) {
          log('response model  not null.....disliked the user...');
          // log(success.toString());
          emit(state.copyWith(updateState: true));
          // log(state.updateState.toString());
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

    on<_ResyncLikedUsersData>((event, emit) {
      emit(state.copyWith(updateState: true));
    });

    on<_BlockUserEvent>((event, emit) async {
      emit(state.copyWith(isBlocked: false));

      BlockUserRequestModel request = BlockUserRequestModel(user: event.userId);

      final result = await ApiServices.blockUserData(request);
      log(result.toString());

      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>block the user event in liked users page>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered...block user event...');
        if (success.id != null) {
          log('response model  not null.....blocked the user...');
          // log(success.toString());
          // emit(state.copyWith(updateState: true));
          // log(state.updateState.toString());
          emit(state.copyWith(isBlocked: true));

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

    on<_UnBlockUserEvent>((event, emit) async {
      BlockUserRequestModel request = BlockUserRequestModel(user: event.userId);

      emit(state.copyWith(isBlocked: true));

      final result = await ApiServices.blockUserData(request);
      log(result.toString());

      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>unblock the user event in liked users page>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered...un block user event...');
        if (success.id != null) {
          log('response model  not null..... un blocked the user...');
          // log(success.toString());
          // emit(state.copyWith(updateState: true));
          // log(state.updateState.toString());
          emit(state.copyWith(isBlocked: false));
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
  }
}
