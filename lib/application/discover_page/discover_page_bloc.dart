// import 'dart:developer';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
// import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
// import 'package:honeybee/domain/models/like_user_request_model/like_user_request_model.dart';
// import 'package:honeybee/infrastructure/services/api_services.dart';
// import 'package:honeybee/infrastructure/services/socket_services.dart';
// import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';

// part 'discover_page_event.dart';
// part 'discover_page_state.dart';
// part 'discover_page_bloc.freezed.dart';

// class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
//   DiscoverPageBloc() : super(DiscoverPageState.initial()) {
//     //--------------->>>-----Fetch Discover Page Data----->>>------------------------

//     on<_JoinUserToSocket>((event, emit) async {
//       String? userId = await getuserIdFromPrefs();

//       if (userId != null) {
//         SocketServices.addUser(userId: userId);
//       }
//     });

//     on<_FetchDiscoverData>((event, emit) async {
//       emit(state.copyWith(isLoading: true));

//       final result = await ApiServices.discover();

//       result.fold((failure) {
//         emit(state.copyWith(errorMessage: failure.errorMessage));
//         emit(state.copyWith(errorMessage: null));
//       }, (success) {
//         //success from backend
//         if (success.profiles != null) {
//           emit(state.copyWith(isLoading: false));
//           emit(state.copyWith(profile: success));

// /////////-----------14/03--------------sorted from liked and disliked users

//           // List<DiscoverResponseModel> draggableItems = success.profiles!
//           //     .where((profile) =>
//           //         !state.likedAndDislikedUsers!.contains(profile.id))
//           //     .toList();
//           // emit(state.copyWith(profile: success, dragItems: draggableItems));

// /////////-------------------------
//         } else {
//           // failure from backend
//           emit(state.copyWith(
//               errorMessage:
//                   'OOPS.. Something went wrong.. Please try again later...'));
//           emit(state.copyWith(errorMessage: null));
//         }
//       });
//     });

//     on<_LikedAndDislikedUsersData>((event, emit) async {
//       final result = await ApiServices.getUserData();
//       log('on get userdata bloc');
//       log(result.toString());

//       result.fold((failure) {
//         //failure on Api Service
//         emit(state.copyWith(errorMessage: failure.errorMessage));
//         emit(state.copyWith(errorMessage: null));
//         log('on failure');

//         log(failure.errorMessage.toString());
//       }, (success) {
//         //success from backend
//         if (success.id != null) {
//           // emit(state.copyWith(isLoading: false));

//           if (success.likedUsers != null || success.dislikedUsers != null) {
//             List<String> usersToRemove = [
//               ...success.likedUsers!,
//               ...success.dislikedUsers!
//             ];

//             emit(state.copyWith(likedAndDislikedUsers: usersToRemove));
//             log('liked and disliked users list ${usersToRemove.toString()}');
//           }
//         } else {
//           // failure from backend
//           emit(state.copyWith(
//               errorMessage:
//                   'OOPS.. Something went wrong.. Please try again later...'));
//           log('on backend error');
//           emit(state.copyWith(errorMessage: null));
//         }
//       });
//     });

// //--------------->>>----- Like User Event----->>>------------------------

//     on<_LikeUserEvent>((event, emit) async {
//       LikeUserRequestModel request = LikeUserRequestModel(user: event.userId);

//       final result = await ApiServices.likeUserData(request);

//       result.fold((failure) {
//         emit(state.copyWith(errorMessage: failure.errorMessage));
//         emit(state.copyWith(errorMessage: null));
//       }, (success) {
//         //success from backend
//         if (success.id != null) {
//           emit(state.copyWith(userId: success.id));
//         } else {
//           // failure from backend
//           emit(state.copyWith(
//               errorMessage:
//                   'OOPS.. Something went wrong.. Please try again later...'));
//           emit(state.copyWith(errorMessage: null));
//         }
//       });
//     });

//     //--------------->>>-----Dislike User Event----->>>------------------------

//     on<_DislikeUserEvent>((event, emit) async {
//       DislikeUserRequestModel request =
//           DislikeUserRequestModel(user: event.userId);

//       final result = await ApiServices.dislikeUserData(request);

//       result.fold((failure) {
//         emit(state.copyWith(errorMessage: failure.errorMessage));
//         emit(state.copyWith(errorMessage: null));
//       }, (success) {
//         //success from backend
//         if (success.id != null) {
//           emit(state.copyWith(userId: success.id));
//         } else {
//           // failure from backend
//           emit(state.copyWith(
//               errorMessage:
//                   'OOPS.. Something went wrong.. Please try again later...'));
//           emit(state.copyWith(errorMessage: null));
//         }
//       });
//     });

// //--------------->>>-----Sync Page Data Event----->>>------------------------

//     on<_SyncEvent>((event, emit) {
//       emit(state.copyWith(updateState: true));
//       emit(state.copyWith(updateState: null));
//     });
//   }
// }


import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/domain/models/like_user_request_model/like_user_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import 'package:honeybee/infrastructure/services/socket_services.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc() : super(DiscoverPageState.initial()) {
    //--------------->>>-----Fetch Discover Page Data----->>>------------------------

    on<_JoinUserToSocket>((event, emit) async {
      String? userId = await getuserIdFromPrefs();

      if (userId != null) {
        SocketServices.addUser(userId: userId);
      }
    });

    on<_FetchDiscoverData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.discover();

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.profiles != null) {
          emit(state.copyWith(isLoading: false));

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

    on<_LikedAndDislikedUsersData>((event, emit) async {
      //------------------------------------------first get all users from discover api and then call this event to sort
      //------------------------------------------the profile to show to the user.
      emit(state.copyWith(isLoading: true));
      final result = await ApiServices.getUserData();

      log('on get userdata bloc');
      log(result.toString());

      result.fold((failure) {
        //failure on Api Service
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
        log('on failure');

        log(failure.errorMessage.toString());
      }, (success) {
        //success from backend
        if (success.id != null) {
          if (success.likedUsers != null || success.dislikedUsers != null) {
            List<String> usersToRemove = [
              ...success.likedUsers!,
              ...success.dislikedUsers!
            ];

            log('status of state prifle ${state.profile}');

            if (state.profile == null) {
              log('value is null');

              emit(
                state.copyWith(
                    isLoading: false,
                    likedAndDislikedUsers: [],
                    errorMessage: 'some thing is error'),
              );
            } else {
              List<DiscoverResponseModel>? draggableItems = state
                  .profile!.profiles!
                  .where((profile) => !usersToRemove.contains(profile.id))
                  .toList();

              emit(state.copyWith(
                  isLoading: false, likedAndDislikedUsers: draggableItems));
              log('liked and disliked users list ${usersToRemove.toString()}');
            }
          }
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          log('on backend error');
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

//--------------->>>----- Like User Event----->>>------------------------

    on<_LikeUserEvent>((event, emit) async {
      LikeUserRequestModel request = LikeUserRequestModel(user: event.userId);

      final result = await ApiServices.likeUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
          emit(state.copyWith(userId: success.id));
          log('liked image');
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });

    //--------------->>>-----Dislike User Event----->>>------------------------

    on<_DislikeUserEvent>((event, emit) async {
      DislikeUserRequestModel request =
          DislikeUserRequestModel(user: event.userId);

      final result = await ApiServices.dislikeUserData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        //success from backend
        if (success.id != null) {
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

    on<_UpdateDiscoverLike>((event, emit) {
      //
      List<DiscoverResponseModel>? getlists =
          List<DiscoverResponseModel>.from(state.likedAndDislikedUsers ?? []);

      if (getlists.isNotEmpty) {
        log(event.profilee.fullName.toString());

        if (getlists.contains(event.profilee)) {
          add(_LikeUserEvent(event.profilee.id));
          log('contains profile');
          // Remove the object using removeWhere with a custom condition
          try {
            getlists.removeWhere((element) => element.id == event.profilee.id);
            // log(getlists.length.toString());
          } catch (e) {
            log(e.toString());
          }
        }

        emit(state.copyWith(likedAndDislikedUsers: getlists));
      } else {
        emit(state.copyWith(likedAndDislikedUsers: []));
      }
    });

    on<_UpdateDiscoverDislike>((event, emit) {
      //
      List<DiscoverResponseModel>? getlists =
          List<DiscoverResponseModel>.from(state.likedAndDislikedUsers ?? []);

      if (getlists.isNotEmpty) {
        log(event.profilee.fullName.toString());

        if (getlists.contains(event.profilee)) {
          log('contains profile');
          add(_DislikeUserEvent(event.profilee.id));
          // Remove the object using removeWhere with a custom condition
          try {
            getlists.removeWhere((element) => element.id == event.profilee.id);
            // log(getlists.length.toString());
          } catch (e) {
            log(e.toString());
          }
        }

        emit(state.copyWith(likedAndDislikedUsers: getlists));
      } else {
        emit(state.copyWith(likedAndDislikedUsers: []));
      }
    });

//--------------->>>-----Sync Page Data Event----->>>------------------------

    on<_SyncEvent>((event, emit) {
      emit(state.copyWith(updateState: true));
      emit(state.copyWith(updateState: null));
    });
  }
}
