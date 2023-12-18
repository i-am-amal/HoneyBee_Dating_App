import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/infrastructure/api_services.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc() : super(CreateAccountState.initial()) {
    on<CreateAccountEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      log('loading the state to true');

      String fullName = event.fullName;
      String location = event.location;
      String email = event.email;
      String age = event.age;
      String phoneNumber = event.phoneNumber;
      String birthday = event.birthday;
      String bio = event.bio;
      String gender = event.gender;
      String preference = event.preference;
      File profileImage = event.profileImage;
      File coverImage = event.coverImage;
      SelectedOptions selectedOptions = event.selectedOptions;
      File? image1 = event.image1;
      File? image2 = event.image2;
      File? image3 = event.image3;

      final result = await ApiServices.createAccount(
        profilePic: profileImage,
        coverPic: coverImage,
        preference: preference,
        phone: phoneNumber,
        age: age,
        bio: bio,
        birthday: birthday,
        drinking: selectedOptions.drinking,
        email: email,
        faith: selectedOptions.faith,
        fullName: fullName,
        gender: gender,
        image0: image1,
        image1: image2,
        image2: image3,
        location: location,
        relationshipStatus: selectedOptions.relationshipStatus,
        smoking: selectedOptions.smoking,
      );

      log('bloc called');
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        if (success.success == true) {
          // Success from backend

          emit(state.copyWith(navigationState: true, isLoading: false));
          log('loading set to false');

          log('navigation state is loading');
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
