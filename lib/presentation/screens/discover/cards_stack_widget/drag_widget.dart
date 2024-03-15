// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:honeybee/application/discover_page/discover_page_bloc.dart';

// import 'profile_card.dart';
// import 'profile_model.dart';
// import 'tag_widget.dart';

// enum Swipe { left, right, none }

// // ignore: must_be_immutable
// class DragWidget extends StatefulWidget {
//   DragWidget(
//       {super.key,
//       required this.swipeNotifier,
//       required this.index,
//       required this.profile,
//       this.isLastCard = false});

//   final Profile profile;
//   final int index;
//   final ValueNotifier<Swipe> swipeNotifier;
//   ValueNotifier<String> dragNotifier = ValueNotifier('');
//   final bool isLastCard;

//   @override
//   State<DragWidget> createState() => _DragWidgetState();
// }

// class _DragWidgetState extends State<DragWidget> {
//   ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Draggable<int>(
//         data: widget.index,
//         feedback: Material(
//           color: Colors.transparent,
//           child: ValueListenableBuilder(
//             valueListenable: swipeNotifier,
//             builder: (context, swipe, _) {
//               return RotationTransition(
//                 turns: swipe != Swipe.none
//                     ? swipe == Swipe.left
//                         ? const AlwaysStoppedAnimation(-15 / 360)
//                         : const AlwaysStoppedAnimation(15 / 360)
//                     : const AlwaysStoppedAnimation(0),
//                 child: Stack(
//                   children: [
//                     ProfileCard(profile: widget.profile),
//                     swipe != Swipe.none
//                         ? swipe == Swipe.right
//                             ? Positioned(
//                                 top: 40,
//                                 left: 20,
//                                 child: Transform.rotate(
//                                   angle: 12,
//                                   child: TagWidget(
//                                     text: '❤️',
//                                     color: Colors.red[400]!,
//                                   ),
//                                 ),
//                               )
//                             : Positioned(
//                                 top: 50,
//                                 right: 24,
//                                 child: Transform.rotate(
//                                   angle: -12,
//                                   child: TagWidget(
//                                     text: '💔',
//                                     color: Colors.red[400]!,
//                                   ),
//                                 ),
//                               )
//                         : const SizedBox.shrink(),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
// //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//         onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
//           // When Draggable widget is dragged right
//           if (dragUpdateDetails.delta.dx > 0 &&
//               dragUpdateDetails.globalPosition.dx >
//                   MediaQuery.of(context).size.width / 2) {
//             /////////////like user event calling////////////////////
//             // BlocProvider.of<DiscoverPageBloc>(context)
//             //     .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));
//             ////////////////////////////////////////////////////////
//             swipeNotifier.value = Swipe.right;
//             log('position updated like');
//             widget.dragNotifier.value = 'right';
//           }
//           // When Draggable widget is dragged left
//           if (dragUpdateDetails.delta.dx < 0 &&
//               dragUpdateDetails.globalPosition.dx <
//                   MediaQuery.of(context).size.width / 2) {
//             //////////dislike user event calling//////////////////////
//             // BlocProvider.of<DiscoverPageBloc>(context)
//             //     .add(DiscoverPageEvent.dislikeUserEvent(widget.profile.id));
//             //////////////////////////////////////////////////////
//             swipeNotifier.value = Swipe.left;
//             log('position updated dislike');
//             widget.dragNotifier.value = 'left';
//           }
//         },
// //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>14/04------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//         onDragCompleted: () {
//           ////////////////////////////////////////////////////////////
//           // Swipe swipeDirection =
//           //     widget.dragNotifier.value == 'right' ? Swipe.right : Swipe.left;

//           // // Notify the parent widget about the swiped profile
//           // widget.swipeNotifier.value = swipeDirection;

// ////////////////////////////////////////////////////////

//           log(widget.dragNotifier.value.toString());
//           if (widget.dragNotifier.value == 'right') {
//             // Like user event calling
//             BlocProvider.of<DiscoverPageBloc>(context)
//                 .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));
//             log('user liked');

//             setState(() {
//               final profiles = BlocProvider.of<DiscoverPageBloc>(context)
//                   .state
//                   .profile
//                   ?.profiles;

//               if (profiles != null && widget.index < profiles.length) {
//                 profiles.removeAt(widget.index);
//               }
//             });
//           } else if (widget.dragNotifier.value == 'left') {
//             // Dislike user event calling
//             BlocProvider.of<DiscoverPageBloc>(context)
//                 .add(DiscoverPageEvent.dislikeUserEvent(widget.profile.id));
//             log('user disliked');

//             setState(() {
//               final profiles = BlocProvider.of<DiscoverPageBloc>(context)
//                   .state
//                   .profile
//                   ?.profiles;

//               if (profiles != null && widget.index < profiles.length) {
//                 profiles.removeAt(widget.index);
//               }
//             });
//           }

//           log('image changed');
//         },

//         /////----------------------------
//         onDragEnd: (drag) {
//           swipeNotifier.value = Swipe.none;
//         },

//         childWhenDragging: Container(
//           color: Colors.transparent,
//         ),

//         child: ProfileCard(profile: widget.profile),
//       ),
//     );
//   }
// }
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';

import 'profile_card.dart';
import 'tag_widget.dart';

enum Swipe { left, right, none }

// ignore: must_be_immutable
class DragWidget extends StatefulWidget {
  DragWidget(
      {super.key,
      required this.swipeNotifier,
      required this.index,
      required this.profile,
      this.isLastCard = false});

  final DiscoverResponseModel profile;
  final int index;
  final ValueNotifier<Swipe> swipeNotifier;
  ValueNotifier<String> dragNotifier = ValueNotifier('');
  final bool isLastCard;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        data: widget.index,
        feedback: ValueListenableBuilder(
          valueListenable: swipeNotifier,
          builder: (context, swipe, _) {
            return RotationTransition(
              turns: swipe != Swipe.none
                  ? swipe == Swipe.left
                      ? const AlwaysStoppedAnimation(-15 / 360)
                      : const AlwaysStoppedAnimation(15 / 360)
                  : const AlwaysStoppedAnimation(0),
              child: Stack(
                children: [
                  ProfileCard(profile: widget.profile),
                  swipe != Swipe.none
                      ? swipe == Swipe.right
                          ? Positioned(
                              top: 40,
                              left: 20,
                              child: Transform.rotate(
                                angle: 12,
                                child: TagWidget(
                                  text: '❤️',
                                  color: Colors.red[400]!,
                                ),
                              ),
                            )
                          : Positioned(
                              top: 50,
                              right: 24,
                              child: Transform.rotate(
                                angle: -12,
                                child: TagWidget(
                                  text: '💔',
                                  color: Colors.red[400]!,
                                ),
                              ),
                            )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          // When Draggable widget is dragged right
          if (dragUpdateDetails.delta.dx > 0 &&
              dragUpdateDetails.globalPosition.dx >
                  MediaQuery.of(context).size.width / 2) {
            /////////////like user event calling////////////////////
            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));
            ////////////////////////////////////////////////////////
            swipeNotifier.value = Swipe.right;
            log('position updated like');
            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.updateDiscoverLike(widget.profile));
            widget.dragNotifier.value = 'right';
              //????????????????????????????????????????????????????????????
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.updateDiscoverLike(widget.profile));
             //????????????????????????????????????????????????????????????

          }

          // When Draggable widget is dragged left
          if (dragUpdateDetails.delta.dx < 0 &&
              dragUpdateDetails.globalPosition.dx <
                  MediaQuery.of(context).size.width / 2) {
            //////////dislike user event calling//////////////////////
            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.dislikeUserEvent(widget.profile.id));
            //////////////////////////////////////////////////////
            swipeNotifier.value = Swipe.left;
            // log('position updated dislike');
            widget.dragNotifier.value = 'left';
            //????????????????????????????????????????????????????????????
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.updateDiscoverDislike(widget.profile));
         //????????????????????????????????????????????????????????????

            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.updateDiscoverDislike(widget.profile));
          }
        },
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

        onDragCompleted: () {
          log(widget.dragNotifier.value.toString());
          if (widget.dragNotifier.value == 'right') {
            // Like user event calling
            // BlocProvider.of<DiscoverPageBloc>(context)
            // .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));

            // log('user liked');
            //  BlocProvider.of<DiscoverPageBloc>(context)
            // .add(DiscoverPageEvent.updateDiscover(widget.profile));
            // if (mounted) {
            //   BlocProvider.of<DiscoverPageBloc>(context)
            //       .add(DiscoverPageEvent.updateDiscover(widget.profile));
            // }

            if (mounted) {
              BlocProvider.of<DiscoverPageBloc>(context)
                  .add(DiscoverPageEvent.updateDiscoverLike(widget.profile));
            }

            // setState(() {
            //   final profiles = BlocProvider.of<DiscoverPageBloc>(context)
            //       .state
            //       .likedAndDislikedUsers;

            //   if (profiles != null && widget.index <= profiles.length) {
            //     profiles
            //         .remove(widget.profile);
            //   }
            // });
          } else if (widget.dragNotifier.value == 'left') {
            // Dislike user event calling
            //-----------------------------------------------------------------
            log('image disliked');

            if (mounted) {
              BlocProvider.of<DiscoverPageBloc>(context)
                  .add(DiscoverPageEvent.updateDiscoverDislike(widget.profile));
            }
            log('user disliked');
          }

          log('image changed');
        },
        onDragEnd: (drag) {
          swipeNotifier.value = Swipe.none;
        },

        childWhenDragging: Container(
          color: Colors.transparent,
        ),

        child: ProfileCard(profile: widget.profile),
      ),
    );
  }
}
