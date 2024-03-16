import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/chatting/chat_screen.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview/user_profile_view_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MatchesPageBloc>(context)
        .add(const MatchesPageEvent.fetchMatchesData());
    return BlocBuilder<MatchesPageBloc, MatchesPageState>(
      builder: (context, state) {
        if (state.isLoading == true) {
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
        } else if (state.isLoading == false &&
            state.profile!.profiles!.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 300 / 400,
              ),
              itemCount: state.profile!.profiles!.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfilePreviewPage(
                          userDetails: UserModel(
                            fullName: state.profile!.profiles![index].fullName!,
                            age: state.profile!.profiles![index].age!,
                            location: state.profile!.profiles![index].location!,
                            bio: state.profile!.profiles![index].bio!,
                            drinking: state.profile!.profiles![index].drinking!,
                            faith: state.profile!.profiles![index].faith!,
                            gender: state.profile!.profiles![index].gender!,
                            profilePic:
                                state.profile!.profiles![index].profilePic!,
                            coverPic: state.profile!.profiles![index].coverPic!,
                            realationshipStatus: state
                                .profile!.profiles![index].realationshipStatus!,
                            smoking: state.profile!.profiles![index].smoking!,
                            img1: state.profile!.profiles![index].images!
                                    .isNotEmpty
                                ? state.profile!.profiles![index].images![0]
                                : null,
                            img2: state.profile!.profiles![index].images!
                                        .length ==
                                    2
                                ? state.profile!.profiles![index].images![1]
                                : null,
                            img3: state.profile!.profiles![index].images!
                                        .length ==
                                    3
                                ? state.profile!.profiles![index].images![2]
                                : null,
                          ),
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.white,
                              child: Image.network(
                                state.profile!.profiles![index].profilePic!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            color: Colors.black.withOpacity(0.7),
                            child: TextButton(
                              child: Text(
                                state.profile!.profiles![index].fullName!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                BlocProvider.of<ChatPageBloc>(context).add(
                                    ChatPageEvent.initializeGetAllMessagePage(
                                        state.userId,
                                        state.profile!.profiles![index].id));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreen(
                                      senderId: state.userId,
                                      receiverId:
                                          state.profile!.profiles![index].id,
                                      conversationId: state.profile!
                                          .profiles![index].conversationId,
                                      profilePic: state
                                          .profile!.profiles![index].profilePic,
                                      name: state
                                          .profile!.profiles![index].fullName,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Image.asset(
              'assets/images/no_result.png',
              height: 600,
              width: 600,
            ),
          );
        }
      },
    );
  }
}
