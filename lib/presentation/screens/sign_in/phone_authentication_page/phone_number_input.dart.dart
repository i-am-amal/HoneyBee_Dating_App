import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/bloc/phone_number_auth_page/phone_number_auth_page_bloc.dart';

// ignore: must_be_immutable
class PhoneNumberInput extends StatelessWidget {
  PhoneNumberInput({super.key});

  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // String phoneNumber = '';
    TextEditingController phoneNumberController = TextEditingController();

    return Column(
      children: [
        Row(
          children: [
            CountryCodePicker(
              onChanged: (code) {
                countryCode = code;

                print(countryCode);
              },
              initialSelection: 'IN',
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.65,
              child: TextFormField(
                onChanged: (value) {
                  print(countryCode);
                  BlocProvider.of<PhoneNumberAuthPageBloc>(context)
                      .add(PhoneNumberAuthPageEvent.setPhoneNumber(
                    phoneNumber: value,
                  ));
                },
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  labelText: 'Phone Number',
                  // helperText: 'Enter your phone number',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
