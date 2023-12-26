import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/domain/models/like_user_request_model/like_user_request_model.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc() : super(DiscoverPageState.initial()) {
    on<_FetchDiscoverData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      log('entered in event ...before calling api service');
      final result = await ApiServices.discover();

      // log(result.toString());
      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>fetching discover data>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered..');
        if (success.profiles != null) {
          log('response model  not null........');
          emit(state.copyWith(isLoading: false));
          log(success.profiles![0].fullName!);
          log(success.profiles![0].id!);

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

    on<_LikeUserEvent>((event, emit) async {
      LikeUserRequestModel request = LikeUserRequestModel(user: event.userId);

      final result = await ApiServices.likeUserData(request);
      log(result.toString());

      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>like the user event>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered...like event...');
        if (success.id != null) {
          log('response model  not null........');
          // log(success.id!);
          // log(success.toString());

          // emit(state.copyWith(userId: success.id));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    on<_DislikeUserEvent>((event, emit) async {
      DislikeUserRequestModel request =
          DislikeUserRequestModel(user: event.userId);

      final result = await ApiServices.dislikeUserData(request);
      log(result.toString());

      log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>dislike the user event>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered...disLike event...');
        if (success.id != null) {
          log('response model  not null........');
          // log(success.toString());
          // emit(state.copyWith(userId: success.id));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    on<_SyncEvent>((event, emit) {
      emit(state.copyWith(updateState: true));
      emit(state.copyWith(updateState: null));
    });
  }
}
