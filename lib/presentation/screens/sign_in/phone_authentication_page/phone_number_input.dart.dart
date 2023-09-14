import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String phoneNumber = '';
    CountryCode? countryCode;
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
              height: height * 0.05,
              width: width * 0.65,
              child: TextFormField(
                onChanged: (value) {
                  phoneNumber = value;
                  print(phoneNumber);
                },
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
