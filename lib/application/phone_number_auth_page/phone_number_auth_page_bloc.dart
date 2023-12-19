import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/phone_number_request_model/phone_number_request_model.dart';
import '../../../domain/validation/form_validation_services.dart';
import '../../../infrastructure/api_services.dart';
part 'phone_number_auth_page_event.dart';
part 'phone_number_auth_page_state.dart';
part 'phone_number_auth_page_bloc.freezed.dart';

class PhoneNumberAuthPageBloc
    extends Bloc<PhoneNumberAuthPageEvent, PhoneNumberAuthPageState> {
  PhoneNumberAuthPageBloc() : super(const _Initial()) {
    on<_PhoneNumberLogin>((event, emit) async {
      String? phoneNumber = event.phoneNumber;
      String? countryCode = event.countryCode;

      log('$countryCode $phoneNumber');

      bool? isValidated =
          FormValidationServices.phoneNumberValidation(phoneNumber);

      if (isValidated) {
        log('--------validation -------working');

        String formattedPhoneNumber =
            '$countryCode ${phoneNumber!.substring(0, 5)} ${phoneNumber.substring(5)}';

        log(formattedPhoneNumber);

        PhoneNumberRequestModel request =
            PhoneNumberRequestModel(phone: formattedPhoneNumber);

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
        // form validation failed

        log('------------------error');
      }
    });

    on<_SetPhoneNumber>((event, emit) {
      String? phoneNumber = event.phoneNumber;
      emit(state.copyWith(phoneNumber: phoneNumber));
    });
  }
}
