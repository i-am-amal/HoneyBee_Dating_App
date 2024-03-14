// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
// import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
// import 'package:honeybee/domain/models/user_model/user_model.dart';
// import 'package:honeybee/presentation/screens/discover/cards_stack_widget/action_button_widget.dart';
// import 'package:honeybee/presentation/screens/discover/cards_stack_widget/drag_widget.dart';
// import 'package:honeybee/presentation/screens/discover/cards_stack_widget/profile_model.dart';
// import 'package:honeybee/presentation/screens/profile/profile_preview/user_profile_view_page.dart';
// import 'package:honeybee/presentation/widgets/constants/colors.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';

// class CardsStackWidget extends StatefulWidget {
//   const CardsStackWidget({super.key});

//   @override
//   State<CardsStackWidget> createState() => _CardsStackWidgetState();
// }

// class _CardsStackWidgetState extends State<CardsStackWidget>
//     with SingleTickerProviderStateMixin {
//   ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
//   ValueNotifier<String> userId = ValueNotifier('');

//   late final AnimationController _animationController;

//   @override
//   void initState() {
//     // BlocProvider.of<DiscoverPageBloc>(context)
//     //     .add(const DiscoverPageEvent.likedAndDislikedUsersData());
//     // BlocProvider.of<DiscoverPageBloc>(context)
//     //     .add(const DiscoverPageEvent.fetchDiscoverData());
//     //--------------------
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 500),
//       vsync: this,
//     );
//     super.initState();

//     _animationController.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         //----------------
//         // BlocProvider.of<DiscoverPageBloc>(context)
//         //     .add(const DiscoverPageEvent.likedAndDislikedUsersData());
//         // BlocProvider.of<DiscoverPageBloc>(context)
//         //     .add(const DiscoverPageEvent.fetchDiscoverData());
//         //--------------
//         // draggableItems.removeLast();
//         _animationController.reset();
//         swipeNotifier.value = Swipe.none;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return SingleChildScrollView(
//       child: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
//         builder: (context, state) {
//           if (state.isLoading!) {
//             return Center(
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 250,
//                   ),
//                   LoadingAnimationWidget.staggeredDotsWave(
//                     color: CustomColors.kRedButtonColor,
//                     size: 70,
//                   ),
//                 ],
//               ),
//             );
//           } else if (state.profile != null) {
// //-----------------------list from discover bloc sorted from liked and disliked users

//             // List<DiscoverResponseModel>? draggableItems =
//             //              state.dragItems;

// //-----------------------list from discover bloc
//             List<DiscoverResponseModel>? draggableItems =
//                 state.profile!.profiles!;

//             // List<DiscoverResponseModel> draggableItems = state
//             //     .profile!.profiles!
//             //     .where((profile) =>
//             //         !state.likedAndDislikedUsers!.contains(profile.id))
//             //     .toList();

//             // log('----------------------------${draggableItems!.contains(userId).toString()}');

//             if (draggableItems.isEmpty) {
//               // If there are no more swipe profiles left, display a message
//               return Container(
//                 height: height * 0.3,
//                 width: width * 0.6,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/no_result.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               );
//             }

//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
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
//                                   coverPic:
//                                       draggableItems[currentIndex].coverPic!,
//                                   realationshipStatus:
//                                       draggableItems[currentIndex]
//                                           .realationshipStatus!,
//                                   smoking:
//                                       draggableItems[currentIndex].smoking!,
//                                   //--------------------Custom Containers..have some issues in some specific cases--------------------//
//                                   img1: draggableItems[currentIndex]
//                                           .images!
//                                           .isNotEmpty
//                                       ? draggableItems[currentIndex].images![0]
//                                       : null,
//                                   img2: draggableItems[currentIndex]
//                                           .images!
//                                           .isNotEmpty
//                                       ? draggableItems[currentIndex].images![1]
//                                       : null,
//                                   img3: draggableItems[currentIndex]
//                                           .images!
//                                           .isNotEmpty
//                                       ? draggableItems[currentIndex].images![2]
//                                       : null,
//                                   //----------------------------------------//
//                                 ),
//                               ),
//                             ),
//                           );
//                         }
//                       },
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: ValueListenableBuilder(
//                           valueListenable: swipeNotifier,
//                           builder: (context, swipe, _) => Stack(
//                             clipBehavior: Clip.none,
//                             alignment: Alignment.center,
//                             children:
//                                 List.generate(draggableItems.length, (index) {
//                               Profile userModel = Profile(
//                                   id: draggableItems[index].id!,
//                                   name: draggableItems[index].fullName!,
//                                   age: draggableItems[index].age!.toString(),
//                                   profileImage:
//                                       draggableItems[index].profilePic!);

//                               userId.value = userModel.id;

//                               // log('---------------------${obj.id},${obj.age},${obj.name}--------data on card stack widget------');
//                               //--------------------------------------------

//                               if (index == draggableItems.length - 1) {
//                                 log('entered in if in card stack ${index.toString()}');
//                                 log('=======End===========');

//                                 return
//                                     //  DragWidget(
//                                     //   profile: userModel,
//                                     //   index: index,
//                                     //   swipeNotifier: swipeNotifier,
//                                     //   isLastCard: true,
//                                     // );

//                                     PositionedTransition(
//                                   rect: RelativeRectTween(
//                                     begin: RelativeRect.fromSize(
//                                         const Rect.fromLTWH(0, 0, 600, 360),
//                                         const Size(600, 360)),
//                                     end: RelativeRect.fromSize(
//                                         Rect.fromLTWH(
//                                             swipe != Swipe.none
//                                                 ? swipe == Swipe.left
//                                                     ? -300
//                                                     : 300
//                                                 : 0,
//                                             0,
//                                             600,
//                                             360),
//                                         const Size(600, 360)),
//                                   ).animate(CurvedAnimation(
//                                     parent: _animationController,
//                                     curve: Curves.easeInOut,
//                                   )),
//                                   child: RotationTransition(
//                                     turns: Tween<double>(
//                                             begin: 0,
//                                             end: swipe != Swipe.none
//                                                 ? swipe == Swipe.left
//                                                     ? -0.1 * 0.3
//                                                     : 0.1 * 0.3
//                                                 : 0.0)
//                                         .animate(
//                                       CurvedAnimation(
//                                         parent: _animationController,
//                                         curve: const Interval(0, 0.4,
//                                             curve: Curves.easeInOut),
//                                       ),
//                                     ),
//                                     child: DragWidget(
//                                       profile: userModel,
//                                       index: index,
//                                       swipeNotifier: swipeNotifier,
//                                       isLastCard: true,
//                                     ),
//                                   ),
//                                 );
//                               }
//                               // else if (draggableItems.isEmpty) {
//                               //   log('---------------Draggable items is empty----------------------');

//                               //   return Text('empty stack');
//                               // }
//                               else {
//                                 log('entered in else in card stack ${index.toString()}');

//                                 return DragWidget(
//                                   profile: userModel,
//                                   index: index,
//                                   swipeNotifier: swipeNotifier,
//                                 );
//                                 // return Text('no cards left');
//                               }
// //-------------------------------------------------
//                             }),
//                           ),
//                         ),
//                       ),
//                     ),
// /////////////////////////////////////////////////////////////
//                     Positioned(
//                       left: 0,
//                       child: DragTarget<int>(
//                         builder: (
//                           BuildContext context,
//                           List<dynamic> accepted,
//                           List<dynamic> rejected,
//                         ) {
//                           return IgnorePointer(
//                             child: Container(
//                               height: 700.0,
//                               width: 80.0,
//                               color: Colors.transparent,
//                             ),
//                           );
//                         },
//                         onAccept: (int index) {
//                           setState(() {
//                             draggableItems.removeAt(index);

//                             ///-----------------------
//                             // BlocProvider.of<DiscoverPageBloc>(context).add(
//                             //     const DiscoverPageEvent
//                             //         .likedAndDislikedUsersData());
//                             // BlocProvider.of<DiscoverPageBloc>(context).add(
//                             //     const DiscoverPageEvent.fetchDiscoverData());

//                             ////------------------
//                           });
//                         },
//                       ),
//                     ),
//                     Positioned(
//                       right: 0,
//                       child: DragTarget<int>(
//                         builder: (
//                           BuildContext context,
//                           List<dynamic> accepted,
//                           List<dynamic> rejected,
//                         ) {
//                           return IgnorePointer(
//                             child: Container(
//                               height: 700.0,
//                               width: 80.0,
//                               color: Colors.transparent,
//                             ),
//                           );
//                         },
//                         onAccept: (int index) {
//                           setState(() {
//                             draggableItems.removeAt(index);
//                             ////------------------
//                             // BlocProvider.of<DiscoverPageBloc>(context).add(
//                             //     const DiscoverPageEvent
//                             //         .likedAndDislikedUsersData());
//                             // BlocProvider.of<DiscoverPageBloc>(context).add(
//                             //     const DiscoverPageEvent.fetchDiscoverData());

//                             ////------------------
//                           });
//                         },
//                       ),
//                     ),
//                     //-----------------------------------------
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 20),
//                       ActionButtonWidget(
//                         onPressed: () {
//                           swipeNotifier.value = Swipe.left;

//                           BlocProvider.of<DiscoverPageBloc>(context).add(
//                               DiscoverPageEvent.dislikeUserEvent(userId.value));
//                           log('${userId.value}---------dislike------------------');
//                           _animationController.forward();
//                         },
//                         icon: const Icon(
//                           Icons.close,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(width: 60),
//                       ActionButtonWidget(
//                         onPressed: () {
//                           swipeNotifier.value = Swipe.right;

//                           log(swipeNotifier.value.toString());
//                           log('action widget like');
//                           BlocProvider.of<DiscoverPageBloc>(context).add(
//                               DiscoverPageEvent.likeUserEvent(userId.value));
//                           log('${userId.value}---------like------------------');

//                           log(swipeNotifier.value.toString());
//                           log('action widget like');

//                           _animationController.forward();
//                         },
//                         icon: const Icon(
//                           Icons.favorite,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           }
//           return const SizedBox();
//         },
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/action_button_widget.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/drag_widget.dart';
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
  ValueNotifier<int> userId = ValueNotifier(0);

  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    // BlocProvider.of<DiscoverPageBloc>(context)
    //     .add(const DiscoverPageEvent.likedAndDislikedUsersData());
    // BlocProvider.of<DiscoverPageBloc>(context)
    //     .add(const DiscoverPageEvent.fetchDiscoverData());
    //--------------------
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //----------------
        // BlocProvider.of<DiscoverPageBloc>(context)
        //     .add(const DiscoverPageEvent.likedAndDislikedUsersData());
        // BlocProvider.of<DiscoverPageBloc>(context)
        //     .add(const DiscoverPageEvent.fetchDiscoverData());
        //--------------
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
                  LoadingAnimationWidget.staggeredDotsWave(
                    color: CustomColors.kRedButtonColor,
                    size: 70,
                  ),
                ],
              ),
            );
          } else if (state.likedAndDislikedUsers != null) {
            // BlocProvider.of<DiscoverPageBloc>(context)
            //     .add(const DiscoverPageEvent.fetchDiscoverData());

            // List<DiscoverResponseModel>? draggableItems = state
            //     .profile!.profiles!
            //     .where((profile) =>
            //         !state.likedAndDislikedUsers!.contains(profile.id))
            //     .toList();

            log(' lenght of draggable ${state.likedAndDislikedUsers?.length.toString()}');

            if (state.likedAndDislikedUsers!.isEmpty) {
              // If there are no more swipe profiles left, display a message
              return Center(
                child: Container(
                  height: height * 0.3,
                  width: width * 0.6,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/no_result.png'),
                      fit: BoxFit.cover,
                    ),
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
                    //------------------------------
                    GestureDetector(
                      onTap: () {
                        int currentIndex = userId.value;
                        // state.likedAndDislikedUsers!.indexWhere(
                        //     (profile) => profile.id == userId.value);

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
                                  //--------------------Custom Containers..have some issues in some specific cases--------------------//
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
                                  //----------------------------------------//
                                ),
                              ),
                            ),
                          );

                          //-----------------------------------------
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
                              // Profile obj = Profile(
                              //     id: state.likedAndDislikedUsers![index].id!,
                              //     name: state
                              //         .likedAndDislikedUsers![index].fullName!,
                              //     age: state.likedAndDislikedUsers![index].age!
                              //         .toString(),
                              //     profileImage: state
                              //         .likedAndDislikedUsers![index]
                              //         .profilePic!);

                              userId.value = index;

                              // log('---------------------${obj.id},${obj.age},${obj.name}--------data on card stack widget------');
                              //--------------------------------------------

                              // log('entered in if in card stack ${index.toString()}');
                              // log('=======End===========');

                              // log('entered in else in card stack ${index.toString()}');

                              if (index ==
                                  state.likedAndDislikedUsers!.length) {
                                // log('entered in if in card stack ${index.toString()}');
                                // log('=======End===========');

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
                                // log('entered in else in card stack ${index.toString()}');

                                return DragWidget(
                                  profile: state.likedAndDislikedUsers![index],
                                  index: index,
                                  swipeNotifier: swipeNotifier,
                                );

                                // return Text('no cards left');
                              }
                              // return Text('no cards left');
                            }),
                          ),
                        ),
                      ),
                    ),
                    //==================
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
                            // draggableItems.removeAt(index);

                            log('some thig is happeng"');

                            ///-----------------------
                            // BlocProvider.of<DiscoverPageBloc>(context).add(
                            //     const DiscoverPageEvent
                            //         .likedAndDislikedUsersData());
                            // BlocProvider.of<DiscoverPageBloc>(context).add(
                            //     const DiscoverPageEvent.fetchDiscoverData());

                            ////------------------
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
                            // draggableItems.removeAt(index);

                            ////------------------
                            // BlocProvider.of<DiscoverPageBloc>(context).add(
                            //     const DiscoverPageEvent
                            //         .likedAndDislikedUsersData());
                            // BlocProvider.of<DiscoverPageBloc>(context).add(
                            //     const DiscoverPageEvent.fetchDiscoverData());

                            ////------------------
                          });
                        },
                      ),
                    ),
                    //----------
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      //--------------------------------------------------------------dislike button
                      ActionButtonWidget(
                        onPressed: () {
                          swipeNotifier.value = Swipe.left;
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.updateDiscoverDislike(
                                  state.likedAndDislikedUsers![userId.value]));
                          // BlocProvider.of<DiscoverPageBloc>(context).add(
                          // DiscoverPageEvent.dislikeUserEvent(userId.value));
                          log('${userId.value}---------dislike------------------');
                          _animationController.forward();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 60),
                      //--------------------------------------------------------------like button
                      ActionButtonWidget(
                        onPressed: () {
                          swipeNotifier.value = Swipe.right;
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.updateDiscoverLike(
                                  state.likedAndDislikedUsers![userId.value]));
                          log(swipeNotifier.value.toString());
                          log('button like');
                          // BlocProvider.of<DiscoverPageBloc>(context).add(
                          // DiscoverPageEvent.likeUserEvent(userId.value));
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
          } else if (state.errorMessage != null) {
            return const Center(
              child: Text('Connection issue'),
            );
          } else if (state.likedAndDislikedUsers!.isEmpty) {
            return const Center(
              child: Text('No thing to show'),
            );
          } else {
            return const Center(
              child: Text('No thing to show'),
            );
          }
        },
      ),
    );
  }
}
