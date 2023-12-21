import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'action_button_widget.dart';
import 'drag_widget.dart';
import 'profile_model.dart';

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({super.key});

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();
}

class _CardsStackWidgetState extends State<CardsStackWidget>
    with SingleTickerProviderStateMixin {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  late final AnimationController _animationController;

  @override
  void initState() {
    BlocProvider.of<DiscoverPageBloc>(context)
        .add(const DiscoverPageEvent.fetchDiscoverData());
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        BlocProvider.of<DiscoverPageBloc>(context)
            .add(const DiscoverPageEvent.fetchDiscoverData());
        // draggableItems.removeLast();
        _animationController.reset();
        swipeNotifier.value = Swipe.none;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
        builder: (context, state) {
          if (state.isLoading!) {
            return Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  LoadingAnimationWidget.halfTriangleDot(
                    color: CustomColors.kRedButtonColor,
                    size: 100,
                  ),
                ],
              ),
            );
          } else if (state.profile != null) {
            List<DiscoverResponseModel>? draggableItems =
                state.profile!.profiles;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ValueListenableBuilder(
                        valueListenable: swipeNotifier,
                        builder: (context, swipe, _) => Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children:
                              List.generate(draggableItems!.length, (index) {
                            Profile obj = Profile(
                                name: draggableItems[index].fullName!,
                                age: draggableItems[index].age!.toString(),
                                profileImage:
                                    draggableItems[index].profilePic!);

                            if (index == draggableItems.length - 1) {
                              return PositionedTransition(
                                rect: RelativeRectTween(
                                  begin: RelativeRect.fromSize(
                                      const Rect.fromLTWH(0, 0, 600, 360),
                                      const Size(600, 360)),
                                  end: RelativeRect.fromSize(
                                      Rect.fromLTWH(
                                          swipe != Swipe.none
                                              ? swipe == Swipe.left
                                                  ? -300
                                                  : 300
                                              : 0,
                                          0,
                                          600,
                                          360),
                                      const Size(600, 360)),
                                ).animate(CurvedAnimation(
                                  parent: _animationController,
                                  curve: Curves.easeInOut,
                                )),
                                child: RotationTransition(
                                  turns: Tween<double>(
                                          begin: 0,
                                          end: swipe != Swipe.none
                                              ? swipe == Swipe.left
                                                  ? -0.1 * 0.3
                                                  : 0.1 * 0.3
                                              : 0.0)
                                      .animate(
                                    CurvedAnimation(
                                      parent: _animationController,
                                      curve: const Interval(0, 0.4,
                                          curve: Curves.easeInOut),
                                    ),
                                  ),
                                  child: DragWidget(
                                    profile: obj,
                                    index: index,
                                    swipeNotifier: swipeNotifier,
                                    isLastCard: true,
                                  ),
                                ),
                              );
                            } else {
                              return DragWidget(
                                profile: obj,
                                index: index,
                                swipeNotifier: swipeNotifier,
                              );
                            }
                          }),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: DragTarget<int>(
                        builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                        ) {
                          return IgnorePointer(
                            child: Container(
                              height: 700.0,
                              width: 80.0,
                              color: Colors.transparent,
                            ),
                          );
                        },
                        onAccept: (int index) {
                          setState(() {
                            draggableItems!.removeAt(index);
                          });
                        },
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: DragTarget<int>(
                        builder: (
                          BuildContext context,
                          List<dynamic> accepted,
                          List<dynamic> rejected,
                        ) {
                          return IgnorePointer(
                            child: Container(
                              height: 700.0,
                              width: 80.0,
                              color: Colors.transparent,
                            ),
                          );
                        },
                        onAccept: (int index) {
                          setState(() {
                            draggableItems!.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      ActionButtonWidget(
                        onPressed: () {
                          swipeNotifier.value = Swipe.left;
                          _animationController.forward();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 60),
                      ActionButtonWidget(
                        onPressed: () {
                          swipeNotifier.value = Swipe.right;
                          _animationController.forward();
                        },
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
