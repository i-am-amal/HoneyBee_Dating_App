// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:honeybee/domain/models/last_message_request_model/last_message_request_model.dart';
// import 'package:honeybee/domain/models/last_message_response_model/last_message_response_model.dart';
// import 'package:honeybee/infrastructure/services/api_services.dart';

// part 'all_messages_event.dart';
// part 'all_messages_state.dart';
// part 'all_messages_bloc.freezed.dart';

// class AllMessagesBloc extends Bloc<AllMessagesEvent, AllMessagesState> {
//   AllMessagesBloc() : super(const _Initial()) {

//     on<_LastMessage>((event, emit)async {
//       // LastMessageRequestModel request = LastMessageRequestModel(conversationIds: );

//       final result = await ApiServices.lastMessageData(request);

//       result.fold((failure) {
//         emit(state.copyWith(errorMessage: failure.errorMessage));
//         emit(state.copyWith(errorMessage: null));
//       }, (success) {

//         // final message = LastMessageResponseModel.generateMessagesMap(success);


//       });

//     });
//   }
// }

