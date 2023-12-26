import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';

import 'profile_card.dart';
import 'profile_model.dart';
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

  final Profile profile;
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
        feedback: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder(
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
        ),

////////////////////////////////////////////////////////
        ///

        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          // When Draggable widget is dragged right
          if (dragUpdateDetails.delta.dx > 0 &&
              dragUpdateDetails.globalPosition.dx >
                  MediaQuery.of(context).size.width / 2) {
            /////////////like user event calling////////////////////
            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));
            /////////////////////////////
            // log('user liked');
            swipeNotifier.value = Swipe.right;
            log('position updated like');

            widget.dragNotifier.value = 'right';
          }

          // When Draggable widget is dragged left
          if (dragUpdateDetails.delta.dx < 0 &&
              dragUpdateDetails.globalPosition.dx <
                  MediaQuery.of(context).size.width / 2) {
//////////////////////dislike user event calling//////////////////////

            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(DiscoverPageEvent.dislikeUserEvent(widget.profile.id));
            ///////////////////////////
            // log('user disliked');

            swipeNotifier.value = Swipe.left;
            log('position updated dislike');
            widget.dragNotifier.value = 'left';
          }

/////////////////////////////////////////////////
        },

        onDragCompleted: () {
          log(widget.dragNotifier.value.toString());
          if (widget.dragNotifier.value == 'right') {
            // Like user event calling
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.likeUserEvent(widget.profile.id));
            log('user liked');
          } else if (widget.dragNotifier.value == 'left') {
            // Dislike user event calling
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.dislikeUserEvent(widget.profile.id));
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
