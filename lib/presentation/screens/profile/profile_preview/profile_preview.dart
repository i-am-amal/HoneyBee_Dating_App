import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/preview_account_page/preview_account_page_bloc.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfilePreview extends StatelessWidget {
  const ProfilePreview({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PreviewAccountPageBloc>(context)
        .add(const PreviewAccountPageEvent.fetchAccountData());

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<PreviewAccountPageBloc, PreviewAccountPageState>(
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
              } else if (state.success != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        BorderlineButton(
                            icon: Icons.arrow_back_ios_new,
                            onpressed: () {
                              Navigator.pop(context);
                            }),
                        SizedBox(
                          width: width * 0.09,
                        ),
                        const CustomText(
                          text: 'My Account',
                          fontFamily: CustomFont.headTextFont,
                          fontWeight: FontWeight.bold,
                          fontsize: 20,
                          letterspacing: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Container(
                      width: width * 0.9,
                      height: height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.network(
                        // 'assets/images/profile.jpg',
                        state.success!.profilePic!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.99,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.05),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.1,
                              ),
                              CustomText(
                                text:
                                    '${state.success!.fullName!} , ${state.success!.age}',
                                fontFamily: CustomFont.headTextFont,
                                fontsize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.1,
                              ),
                              CustomText(
                                text: state.success!.location!,
                                fontFamily: CustomFont.headTextFont,
                                fontsize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.1,
                              ),
                              Flexible(
                                child: CustomText(
                                  text: state.success!.bio!,
                                  fontFamily: CustomFont.headTextFont,
                                  fontsize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ChoiceButton(
                                  icon: FontAwesomeIcons.person,
                                  label: state.success!.gender ?? 'NA'),
                              ChoiceButton(
                                  icon: FontAwesomeIcons.personPraying,
                                  label: state.success!.faith!),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          ChoiceButton(
                              icon: FontAwesomeIcons.heart,
                              label: state.success!.realationshipStatus!),
                          SizedBox(height: height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ChoiceButton(
                                  icon: FontAwesomeIcons.smoking,
                                  label: state.success!.smoking!),
                              ChoiceButton(
                                  icon: FontAwesomeIcons.wineGlass,
                                  label: state.success!.drinking!),
                            ],
                          ),
                          //////////////////////////////
                          ///
                          SizedBox(height: height * 0.05),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * 0.25,
                              // width: width * 0.9,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3)),
                                  ]),
                              child: state.success!.coverPic != null
                                  ? Image.network(
                                      state.success!.coverPic!,
                                      fit: BoxFit.cover,
                                    )
                                  : const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Center(
                                        child: Text('No image Available'),
                                      ),
                                    ),
                            ),

                          
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: height * 0.2,
                                        // width: width * 0.9,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3)),
                                            ]),
                                        child: state.success!.images != null &&
                                                state.success!.images!
                                                    .isNotEmpty &&
                                                state
                                                    .success!.images!.isNotEmpty
                                            ? Image.network(
                                                state.success!.images![0],
                                                fit: BoxFit.cover,
                                              )
                                            : const Padding(
                                                padding: EdgeInsets.all(15.0),
                                                child: Center(
                                                  child: Text(
                                                      'No image Available'),
                                                ),
                                              ),
                                      ),

                                      // child: SizedBox(
                                      //   height: height * 0.2,
                                      //   child: state.success!.images != null &&
                                      //           state.success!.images!
                                      //               .isNotEmpty &&
                                      //           state
                                      //               .success!.images!.isNotEmpty
                                      //       ? Image.network(
                                      //           state.success!.images![0],
                                      //           fit: BoxFit.cover,
                                      //         )
                                      //       : const Padding(
                                      //           padding: EdgeInsets.all(15.0),
                                      //           child: Center(
                                      //             child: Text(
                                      //                 'No image Available'),
                                      //           ),
                                      //         ),
                                      // ),
                                    ),
                                    SizedBox(width: width * 0.05),
                                    Expanded(
                                      child: Container(
                                        height: height * 0.2,
                                        // width: width * 0.9,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3)),
                                            ]),
                                        child: state.success!.images != null &&
                                                state.success!.images!.length >
                                                    1
                                            ? Image.network(
                                                state.success!.images![1],
                                                fit: BoxFit.cover,
                                              )
                                            : const Padding(
                                                padding: EdgeInsets.all(15.0),
                                                child: Center(
                                                  child: Text(
                                                      'No image Available'),
                                                ),
                                              ),
                                      ),
                                      // child: SizedBox(
                                      //   height: height * 0.2,
                                      //   child: state.success!.images != null &&
                                      //           state.success!.images!.length >
                                      //               1
                                      //       ? Image.network(
                                      //           state.success!.images![1],
                                      //           fit: BoxFit.cover,
                                      //         )
                                      //       : const Padding(
                                      //           padding: EdgeInsets.all(15.0),
                                      //           child: Center(
                                      //             child: Text(
                                      //                 'No image Available'),
                                      //           ),
                                      //         ),
                                      // ),
                                    ),
                                    SizedBox(width: width * 0.05),
                                    Expanded(
                                      child: Container(
                                        height: height * 0.2,
                                        // width: width * 0.9,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3)),
                                            ]),
                                        child: state.success!.images != null &&
                                                state.success!.images!.length >
                                                    2
                                            ? Image.network(
                                                state.success!.images![2],
                                                fit: BoxFit.cover,
                                              )
                                            : const Padding(
                                                padding: EdgeInsets.all(15.0),
                                                child: Center(
                                                  child: Text(
                                                      'No image Available'),
                                                ),
                                              ),
                                      ),

                                      // SizedBox(
                                      //   height: height * 0.2,
                                      //   child:
                                      //state.success!.images != null &&
                                      //           state.success!.images!.length >
                                      //               2
                                      //       ? Image.network(
                                      //           state.success!.images![2],
                                      //           fit: BoxFit.cover,
                                      //         )
                                      //       : const Padding(
                                      //       padding: EdgeInsets.all(15.0),
                                      //       child: Center(
                                      //         child: Text('No image Available'),
                                      //       ),
                                      //     ),
                                      // ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: height * 0.05),
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    this.icon,
    required this.label,
    super.key,
  });

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

//  Container(
//     height: height * 0.2,
//     // width: width * 0.9,
//     decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: const Offset(0, 3)),
//         ]),
//     child: image3 != null
//         ? Image.file(
//             image3!,
//             fit: BoxFit.cover,
//           )
//         : const Center(
//             child: Text('No image Available'),
//           ),
//   ),
