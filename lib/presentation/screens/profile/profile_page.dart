import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/button_widgets/interest_page_button.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import '../../widgets/textform_widgets/custom_textformfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    dateController.text = "";
    phoneNumberController.text = "123456";
    nameController.text = '';
    emailController.text = '';

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.1,
              ),
              const CustomText(
                text: 'Basic Info',
                letterspacing: 1,
                fontFamily: CustomFont.headTextFont,
                fontWeight: FontWeight.bold,
                fontsize: 25,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CutomTextFormFiled(
            text: 'Full Name',
            editController: nameController,
            keyboardType: TextInputType.name,
            icon: Icons.badge_outlined,
          ),
          CutomTextFormFiled(
            text: 'Email',
            editController: emailController,
            keyboardType: TextInputType.emailAddress,
            icon: Icons.email_outlined,
          ),
          CutomTextFormFiled(
            text: 'Phone Number',
            editController: phoneNumberController,
            keyboardType: TextInputType.phone,
            icon: Icons.phone_sharp,
            // enable: false,
          ),
          CutomTextFormFiled(
            icon: Icons.calendar_month_outlined,
            text: 'Birthday',
            editController: dateController,
            readonly: true,
            onTap: () async {
              CustomDatePicker.showDatePickerDialog(context);
              dateController.text = CustomDatePicker.selectedDate.toString();
            },
          ),
          SizedBox(
            height: height * 0.05,
          ),
          const InterestPageCustomButton(
            customtext: 'Location',
            icon: Icons.location_on_rounded,
            iconcolor: CustomColors.kwhiteIconColor,
            txtcolor: CustomColors.kWhiteTextColor,
            horizontalPadding: 150,
            verticalPadding: 10,
          ),
          SizedBox(
            height: height * 0.09,
          ),
          MainCustomButton(
            customtext: "Continue",
            height: height * 0.02,
            width: width * 0.25,
            txtcolor: CustomColors.kWhiteTextColor,
            fontWeight: FontWeight.bold,
            letterspacing: 1,
            fontsize: 15,
          )
        ],
      ),
    );
  }
}
