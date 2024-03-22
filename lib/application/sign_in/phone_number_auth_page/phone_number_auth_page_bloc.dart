import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/phone_number_request_model/phone_number_request_model.dart';
import 'package:honeybee/domain/validation/form_validation_services.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
part 'phone_number_auth_page_event.dart';
part 'phone_number_auth_page_state.dart';
part 'phone_number_auth_page_bloc.freezed.dart';

class PhoneNumberAuthPageBloc
    extends Bloc<PhoneNumberAuthPageEvent, PhoneNumberAuthPageState> {
  PhoneNumberAuthPageBloc() : super(const _Initial()) {
    //--------------->>>-----Phone Number Login Event----->>>------------------------

    on<_PhoneNumberLogin>((event, emit) async {
      String? phoneNumber = event.phoneNumber;
      bool? isValidated =
          FormValidationServices.phoneNumberValidation(phoneNumber);

      if (isValidated) {
        PhoneNumberRequestModel request =
            PhoneNumberRequestModel(phone: phoneNumber);

        final result = await ApiServices.phoneNumberLogin(request);

        result.fold((failure) {
          // failure message from Api Services
          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          if (success.success == true) {
            // Success from backend
            emit(state.copyWith(isPhoneNumberVerified: true));
            emit(state.copyWith(isPhoneNumberVerified: null));
          } else {
            // failure from backend
            emit(state.copyWith(
                errorMessage:
                    'OOPS.. Something went wrong.. Please try again later...'));
            emit(state.copyWith(errorMessage: null));
          }
        });
      } else {
        emit(state.copyWith(errorMessage: 'Phone Number Validation Failed'));
      }
    });

    //--------------->>>-----Set PhoneNumber Event----->>>------------------------

    on<_SetPhoneNumber>((event, emit) {
      String? phoneNumber = event.phoneNumber;
      emit(state.copyWith(phoneNumber: phoneNumber));
    });
  }
}
