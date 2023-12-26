import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/all_liked_users_response_model/all_liked_users_response_model.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'all_liked_users_page_event.dart';
part 'all_liked_users_page_state.dart';
part 'all_liked_users_page_bloc.freezed.dart';

class AllLikedUsersPageBloc extends Bloc<AllLikedUsersPageEvent, AllLikedUsersPageState> {
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


  }
}
