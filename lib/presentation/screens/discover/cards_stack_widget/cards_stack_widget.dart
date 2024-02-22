import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/action_button_widget.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/drag_widget.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/profile_model.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview/user_profile_view_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({super.key});

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();
}

class _CardsStackWidgetState extends State<CardsStackWidget>
    with SingleTickerProviderStateMixin {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
  ValueNotifier<String> userId = ValueNotifier('');

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
                  LoadingAnimationWidget.discreteCircle(
                    color: CustomColors.kRedButtonColor,
                    size: 70,
                  ),
                ],
              ),
            );
          } else if (state.profile != null) {
            List<DiscoverResponseModel>? draggableItems =
                state.profile!.profiles;

            if (draggableItems!.isEmpty) {
              // If there are no more swipe profiles left, display a message
              return Container(
                height: height * 0.3,
                width: width * 0.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/no_result.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
              //  Text(
              //   'No more profiles to show!',
              //   style: TextStyle(fontSize: 20),
              // );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ////////////////////////////////////////////////////
                    GestureDetector(
                      onTap: () {
                        int currentIndex = draggableItems.indexWhere(
                            (profile) => profile.id == userId.value);

                        if (currentIndex != -1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfilePreviewPage(
                                userDetails: UserModel(
                                  fullName:
                                      draggableItems[currentIndex].fullName!,
                                  age: draggableItems[currentIndex].age!,
                                  location:
                                      draggableItems[currentIndex].location!,
                                  bio: draggableItems[currentIndex].bio!,
                                  drinking:
                                      draggableItems[currentIndex].drinking!,
                                  faith: draggableItems[currentIndex].faith!,
                                  gender: draggableItems[currentIndex].gender!,
                                  profilePic:
                                      draggableItems[currentIndex].profilePic!,
                                  realationshipStatus:
                                      draggableItems[currentIndex]
                                          .realationshipStatus!,
                                  smoking:
                                      draggableItems[currentIndex].smoking!,
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
                            children:
                                List.generate(draggableItems.length, (index) {
                              Profile obj = Profile(
                                  id: draggableItems[index].id!,
                                  name: draggableItems[index].fullName!,
                                  age: draggableItems[index].age!.toString(),
                                  profileImage:
                                      draggableItems[index].profilePic!);

                              userId.value = obj.id;

                              log('---------------------${obj.id},${obj.age},${obj.name}--------data on card stack widget------');
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
                    ),
                    /////////////////////////////////////////////
//                     GestureDetector(
//   onTap: () {
//     // Code for handling onTap event

//                         int currentIndex = draggableItems.indexWhere(
//                             (profile) => profile.id == userId.value);

//                         if (currentIndex != -1) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => UserProfilePreviewPage(
//                                 userDetails: UserModel(
//                                   fullName:
//                                       draggableItems[currentIndex].fullName!,
//                                   age: draggableItems[currentIndex].age!,
//                                   location:
//                                       draggableItems[currentIndex].location!,
//                                   bio: draggableItems[currentIndex].bio!,
//                                   drinking:
//                                       draggableItems[currentIndex].drinking!,
//                                   faith: draggableItems[currentIndex].faith!,
//                                   gender: draggableItems[currentIndex].gender!,
//                                   profilePic:
//                                       draggableItems[currentIndex].profilePic!,
//                                   realationshipStatus:
//                                       draggableItems[currentIndex]
//                                           .realationshipStatus!,
//                                   smoking:
//                                       draggableItems[currentIndex].smoking!,
//                                 ),
//                               ),
//                             ),
//                           );
//                         }
//   },
//   child: ClipRRect(
//     borderRadius: BorderRadius.circular(10),
//     child: ValueListenableBuilder(
//       valueListenable: swipeNotifier,
//       builder: (context, swipe, _) => Stack(
//         clipBehavior: Clip.none,
//         alignment: Alignment.center,
//         children: List.generate(draggableItems.length, (index) {
//           Profile obj = Profile(
//             id: draggableItems[index].id!,
//             name: draggableItems[index].fullName!,
//             age: draggableItems[index].age!.toString(),
//             profileImage: draggableItems[index].profilePic!,
//           );

//           userId.value = obj.id;

//           log('---------------------${obj.id},${obj.age},${obj.name}--------data on card stack widget------');
//           if (index == draggableItems.length - 1) {
//             return PositionedTransition(
//               rect: RelativeRectTween(
//                 begin: RelativeRect.fromSize(
//                   const Rect.fromLTWH(0, 0, 600, 360),
//                   const Size(600, 360),
//                 ),
//                 end: RelativeRect.fromSize(
//                   Rect.fromLTWH(
//                     swipe != Swipe.none ? swipe == Swipe.left ? -300 : 300 : 0,
//                     0,
//                     600,
//                     360,
//                   ),
//                   const Size(600, 360),
//                 ),
//               ).animate(
//                 CurvedAnimation(
//                   parent: _animationController,
//                   curve: Curves.easeInOut,
//                 ),
//               ),
//               child: RotationTransition(
//                 turns: Tween<double>(
//                   begin: 0,
//                   end: swipe != Swipe.none
//                       ? swipe == Swipe.left
//                           ? -0.1 * 0.3
//                           : 0.1 * 0.3
//                       : 0.0,
//                 ).animate(
//                   CurvedAnimation(
//                     parent: _animationController,
//                     curve: const Interval(0, 0.4, curve: Curves.easeInOut),
//                   ),
//                 ),
//                 child: DragWidget(
//                   profile: obj,
//                   index: index,
//                   swipeNotifier: swipeNotifier,
//                   isLastCard: true,
//                   onSwipe: (Swipe swipe) {
//                     if (swipe != Swipe.none) {
//                       // Remove the swiped profile from the list
//                       draggableItems.removeAt(index);
//                       // Reset index to prevent skipping profiles
//                       index--;
//                     }
//                   },
//                 ),
//               ),
//             );
//           } else {
//             return DragWidget(
//               profile: obj,
//               index: index,
//               swipeNotifier: swipeNotifier,
//               onSwipe: (Swipe swipe) {
//                 if (swipe != Swipe.none) {
//                   // Remove the swiped profile from the list
//                   draggableItems.removeAt(index);
//                   // Reset index to prevent skipping profiles
//                   index--;
//                 }
//               },
//             );
//           }
//         }),
//       ),
//     ),
//   ),
// ),
/////////////////////////////////////////////////////////////
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
                            draggableItems.removeAt(index);
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
                            draggableItems.removeAt(index);
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

                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.dislikeUserEvent(userId.value));
                          log('${userId.value}---------dislike------------------');
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

                          log(swipeNotifier.value.toString());
                          log('action widget like');
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.likeUserEvent(userId.value));
                          log('${userId.value}---------like------------------');

                          log(swipeNotifier.value.toString());
                          log('action widget like');

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
