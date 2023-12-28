import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/get_user_data_response_model/get_user_data_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'preview_account_page_event.dart';
part 'preview_account_page_state.dart';
part 'preview_account_page_bloc.freezed.dart';

class PreviewAccountPageBloc
    extends Bloc<PreviewAccountPageEvent, PreviewAccountPageState> {
  PreviewAccountPageBloc() : super(PreviewAccountPageState.initial()) {
    //--------------->>>-----Fetch Account Data----->>>------------------------

    on<_FetchAccountData>((event, emit) async {
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

          emit(state.copyWith(success: success));
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
