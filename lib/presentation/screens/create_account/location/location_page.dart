import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/core/config.dart';
import 'package:honeybee/infrastructure/gps_services.dart';
import 'package:honeybee/presentation/screens/create_account/profile_images/profile_images.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import '../../../../application/location_auth_page/location_auth_page_bloc.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({
    super.key,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.birthday,
    required this.profileImage,
  });

  final String fullName;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File? profileImage;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<LocationAuthPageBloc>(context)
        .add(const LocationAuthPageEvent.fetchlocationDataEvent());

    //    latitude = double.parse(Config.currentLatitude ?? 'error in  latitude ');
    // longitude = double.parse(Config.currentLongitude ?? 'error in  latitude ');

    // String location = LocationName.getLocationNameFromCoordinates(Config.currentLatitude, Config.currentLongitude);

    String location = 'Location';

    log('$fullName, $email, $phoneNumber, $birthday,');

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // BlocBuilder<LocationAuthPageBloc, LocationAuthPageState>(
    //     builder: (context, state) {

    return BlocBuilder<LocationAuthPageBloc, LocationAuthPageState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                SizedBox(
                  height: height * 0.5,
                  width: double.infinity,
                  child: Image.asset('assets/images/location1.jpg'),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomText(
                  // text: locationTextController.text,
                  text: location,
                  letterspacing: 1.5,
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 17,
                ),
                SizedBox(
                  height: height * 0.02,
                ),

                // CustomTextFormFiled(
                //   icon: Icons.location_on,
                //   editController: locationTextController,
                //   keyboardType: TextInputType.streetAddress,
                //   //////////////////////////////////////////////////////////////////////
                //   onTap: (value) {
                //     // BlocProvider.of<LocationAuthPageBloc>(context).add(
                //     //     LocationAuthPageEvent.searchLocation(
                //     //         locationName: value));
                //     log(value);
                //     /////////////////////////////////////////////////////////////////////////
                //   },
                // ),

                SizedBox(
                  height: height * 0.06,
                ),
                MainCustomButton(
                  customtext: "Continue",
                  height: height * 0.02,
                  width: width * 0.25,
                  txtcolor: CustomColors.kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                  letterspacing: 1,
                  fontsize: 15,
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileImages(
                          fullName: fullName,
                          email: email,
                          birthday: birthday,
                          phoneNumber: phoneNumber,
                          location: location,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
    // });
  }
}
