import 'dart:developer';
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
    on<UpdateAccountPageEvent>((event, emit) async {
///////////////////////

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

      log('''----on bloc -----
      ${editProfileDetails.age},
      ${editProfileDetails.bio},
      ${editProfileDetails.birthday},
      ${editProfileDetails.coverPic},
      ${editProfileDetails.drinking},
      ${editProfileDetails.email},
      ${editProfileDetails.faith},
      ${editProfileDetails.fullName},
      ${editProfileDetails.gender},
      ${editProfileDetails.image0},
      ${editProfileDetails.image1},
      ${editProfileDetails.image2},
      ${editProfileDetails.location},
      ${editProfileDetails.phone},
      ${editProfileDetails.preference},
      ${editProfileDetails.profilePic},
      ${editProfileDetails.relationshipStatus},
      ${editProfileDetails.smoking},''');

//////////////////////

      File? profileImagePath;
      if (editProfileDetails.profilePic != null) {
        if (editProfileDetails.profilePic!.path.startsWith('http')) {
          profileImagePath = null; // Don't pass if it's a URL
        } else {
          profileImagePath = editProfileDetails.profilePic!;
        }
      }

      // Check and process cover image
      File? coverImagePath;
      if (editProfileDetails.coverPic != null) {
        if (editProfileDetails.coverPic!.path.startsWith('http')) {
          coverImagePath = null; // Don't pass if it's a URL
        } else {
          coverImagePath = editProfileDetails.coverPic!;
        }
      }

      // Check and process other images
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

//////////////////////

      final result = await ApiServices.userEditData(
          ///////////
          profilePic: profileImagePath,
          coverPic: coverImagePath,
          image0: imagePaths.isNotEmpty ? imagePaths[0] : null,
          image1: imagePaths.length > 1 ? imagePaths[1] : null,
          image2: imagePaths.length > 2 ? imagePaths[2] : null,

          ////////////

          age: editProfileDetails.age,
          bio: editProfileDetails.bio,
          birthday: editProfileDetails.birthday,
          // coverPic: editProfileDetails.coverPic,
          drinking: editProfileDetails.drinking,
          email: editProfileDetails.email,
          faith: editProfileDetails.faith,
          fullName: editProfileDetails.fullName,
          gender: editProfileDetails.gender,
          // image0: editProfileDetails.image0,
          // image1: editProfileDetails.image1,
          // image2: editProfileDetails.image2,
          location: editProfileDetails.location,
          phone: editProfileDetails.phone,
          preference: editProfileDetails.preference,
          // profilePic: editProfileDetails.profilePic,
          relationshipStatus: editProfileDetails.relationshipStatus,
          smoking: editProfileDetails.smoking);

      result.fold((failure) {
        log('entered in failure in api $failure');
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        if (success.id != null) {
          log('entered in success');
          // Success from backend
          // emit(state.copyWith(token: success.token));
          emit(state.copyWith(navigationState: true, isLoading: false));
        } else {
          // failure from backend
          log('failure from backend');
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

/////////////////////////////////
  }
}
