import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'update_account_page_event.dart';
part 'update_account_page_state.dart';
part 'update_account_page_bloc.freezed.dart';

class UpdateAccountPageBloc
    extends Bloc<UpdateAccountPageEvent, UpdateAccountPageState> {
  UpdateAccountPageBloc() : super(UpdateAccountPageState.initial()) {
    //--------------->>>-----Edit profile Event----->>>------------------------

    on<UpdateAccountPageEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      EditProfileModel editProfileDetails = EditProfileModel(
          age: event.editProfileDetails.age,
          bio: event.editProfileDetails.bio,
          birthday: event.editProfileDetails.birthday,
          coverPic: event.editProfileDetails.coverPic,
          drinking: event.editProfileDetails.drinking,
          email: event.editProfileDetails.email,
          faith: event.editProfileDetails.faith,
          fullName: event.editProfileDetails.fullName,
          gender: event.editProfileDetails.gender,
          image0: event.editProfileDetails.image0,
          image1: event.editProfileDetails.image1,
          image2: event.editProfileDetails.image2,
          location: event.editProfileDetails.location,
          phone: event.editProfileDetails.phone,
          preference: event.editProfileDetails.preference,
          profilePic: event.editProfileDetails.profilePic,
          relationshipStatus: event.editProfileDetails.relationshipStatus,
          smoking: event.editProfileDetails.smoking);

      //--------------->>>-----images path checking section----->>>------------------------

      File? profileImagePath;
      if (editProfileDetails.profilePic != null) {
        if (editProfileDetails.profilePic!.path.startsWith('http')) {
          profileImagePath = null; // Don't pass if it's a URL
        } else {
          profileImagePath = editProfileDetails.profilePic!;
        }
      }


      File? coverImagePath;
      if (editProfileDetails.coverPic != null) {
        if (editProfileDetails.coverPic!.path.startsWith('http')) {
          coverImagePath = null; // Don't pass if it's a URL
        } else {
          coverImagePath = editProfileDetails.coverPic!;
        }
      }

      List<File?> imagePaths = [];
      for (var image in [
        editProfileDetails.image0,
        editProfileDetails.image1,
        editProfileDetails.image2,
      ]) {
        if (image != null) {
          if (image.path.startsWith('http')) {
            imagePaths.add(null); // Don't pass if it's a URL
          } else {
            imagePaths.add(image);
          }
        }
      }

      final result = await ApiServices.userEditData(
          profilePic: profileImagePath,
          coverPic: coverImagePath,
          image0: imagePaths.isNotEmpty ? imagePaths[0] : null,
          image1: imagePaths.length > 1 ? imagePaths[1] : null,
          image2: imagePaths.length > 2 ? imagePaths[2] : null,
          age: editProfileDetails.age,
          bio: editProfileDetails.bio,
          birthday: editProfileDetails.birthday,
          drinking: editProfileDetails.drinking,
          email: editProfileDetails.email,
          faith: editProfileDetails.faith,
          fullName: editProfileDetails.fullName,
          gender: editProfileDetails.gender,
          location: editProfileDetails.location,
          phone: editProfileDetails.phone,
          preference: editProfileDetails.preference,
          relationshipStatus: editProfileDetails.relationshipStatus,
          smoking: editProfileDetails.smoking);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        if (success.id != null) {
          // Success from backend
          emit(state.copyWith(navigationState: true, isLoading: false));
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
