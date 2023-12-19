import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc() : super(DiscoverPageState.initial()) {
    on<_FetchDiscoverData>((event, emit) async {
      final result = await ApiServices.discover();

      result.fold((failure) {
        log('no response from api call');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...enetered..');
        if (success.id != null) {
          log('id not null........');
          emit(state.copyWith(
              id: success.id,
              profileImage: success.profilePic,
              name: success.fullName,
              age: success.age));
          log('${success.id},${success.fullName},${success.age},${success.profilePic}');
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
