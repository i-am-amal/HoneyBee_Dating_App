import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/action_button_widget.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/drag_widget.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview/user_profile_view_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({super.key});

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();
}

class _CardsStackWidgetState extends State<CardsStackWidget>
    with SingleTickerProviderStateMixin {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
  ValueNotifier<int> userId = ValueNotifier(0);

  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
        swipeNotifier.value = Swipe.none;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
        builder: (context, state) {
          if (state.isLoading!) {
            return Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  LoadingAnimationWidget.staggeredDotsWave(
                    color: CustomColors.kRedButtonColor,
                    size: 70,
                  ),
                ],
              ),
            );
          } else if (state.likedAndDislikedUsers != null) {
            if (state.likedAndDislikedUsers!.isEmpty) {
              return Center(
                child: SizedBox(
                  height: height * 0.6,
                  width: width * 0.8,
                  child: Lottie.asset(
                    'assets/lotties/no data available  man with lap.json',
                    animate: true,
                    repeat: true,
                  ),
                ),
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        int currentIndex = userId.value;

                        if (currentIndex != -1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfilePreviewPage(
                                userDetails: UserModel(
                                  fullName: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .fullName!,
                                  age: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .age!,
                                  location: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .location!,
                                  bio: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .bio!,
                                  drinking: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .drinking!,
                                  faith: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .faith!,
                                  gender: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .gender!,
                                  profilePic: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .profilePic!,
                                  coverPic: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .coverPic!,
                                  realationshipStatus: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .realationshipStatus!,
                                  smoking: state
                                      .likedAndDislikedUsers![currentIndex]
                                      .smoking!,
                                  img1: state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images!
                                          .isNotEmpty
                                      ? state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images![0]
                                      : null,
                                  img2: state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images!
                                          .isNotEmpty
                                      ? state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images![1]
                                      : null,
                                  img3: state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images!
                                          .isNotEmpty
                                      ? state
                                          .likedAndDislikedUsers![currentIndex]
                                          .images![2]
                                      : null,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ValueListenableBuilder(
                          valueListenable: swipeNotifier,
                          builder: (context, swipe, _) => Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: List.generate(
                                state.likedAndDislikedUsers!.length, (index) {
                              userId.value = index;
                              if (index ==
                                  state.likedAndDislikedUsers!.length) {
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
                                            400,
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
                                      profile:
                                          state.likedAndDislikedUsers![index],
                                      index: index,
                                      swipeNotifier: swipeNotifier,
                                      isLastCard: true,
                                    ),
                                  ),
                                );
                              } else {
                                return DragWidget(
                                  profile: state.likedAndDislikedUsers![index],
                                  index: index,
                                  swipeNotifier: swipeNotifier,
                                );
                              }
                            }),
                          ),
                        ),
                      ),
                    ),

                    //--------------Action of swiping card-------20/03--------//
                    //   Positioned(
                    //     left: 0,
                    //     child: DragTarget<int>(
                    //       builder: (
                    //         BuildContext context,
                    //         List<dynamic> accepted,
                    //         List<dynamic> rejected,
                    //       ) {
                    //         return IgnorePointer(
                    //           child: Container(
                    //             height: 700.0,
                    //             width: 80.0,
                    //             color: Colors.transparent,
                    //           ),
                    //         );
                    //       },
                    //       // onAccept: (int index) {
                    //       //   setState(() {});
                    //       // },
                    //     ),
                    //   ),
                    //   Positioned(
                    //     right: 0,
                    //     child: DragTarget<int>(
                    //       builder: (
                    //         BuildContext context,
                    //         List<dynamic> accepted,
                    //         List<dynamic> rejected,
                    //       ) {
                    //         return IgnorePointer(
                    //           child: Container(
                    //             height: 700.0,
                    //             width: 80.0,
                    //             color: Colors.transparent,
                    //           ),
                    //         );
                    //       },
                    //       // onAccept: (int index) {},
                    //     ),
                    //   ),
                    //-------------------------------------------------------//
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
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.updateDiscoverDislike(
                                  state.likedAndDislikedUsers![userId.value]));
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
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.updateDiscoverLike(
                                  state.likedAndDislikedUsers![userId.value]));
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
          } else if (state.errorMessage != null) {
            return const Center(
              child: Text('Connection issue'),
            );
          } else if (state.likedAndDislikedUsers!.isEmpty) {
            return const Center(
              child: Text('Nothing to show'),
            );
          } else {
            return const Center(
              child: Text('Nothing to show'),
            );
          }
        },
      ),
    );
  }
}
