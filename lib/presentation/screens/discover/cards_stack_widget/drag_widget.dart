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
      this.isLastCard = false
      });

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
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          if (dragUpdateDetails.delta.dx > 0 &&
              dragUpdateDetails.globalPosition.dx >
                  MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.right;
            widget.dragNotifier.value = 'right';
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.updateDiscoverLike(widget.profile));
          }

          if (dragUpdateDetails.delta.dx < 0 &&
              dragUpdateDetails.globalPosition.dx <
                  MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.left;
            widget.dragNotifier.value = 'left';
            BlocProvider.of<DiscoverPageBloc>(context)
                .add(DiscoverPageEvent.updateDiscoverDislike(widget.profile));
          }
        },
        onDragCompleted: () {
          if (widget.dragNotifier.value == 'right') {
            if (mounted) {
              BlocProvider.of<DiscoverPageBloc>(context)
                  .add(DiscoverPageEvent.updateDiscoverLike(widget.profile));
            }
          } else if (widget.dragNotifier.value == 'left') {
            if (mounted) {
              BlocProvider.of<DiscoverPageBloc>(context)
                  .add(DiscoverPageEvent.updateDiscoverDislike(widget.profile));
            }
          }
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
