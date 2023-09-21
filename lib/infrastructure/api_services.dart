import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:honeybee/core/config.dart';
import 'package:honeybee/domain/failures/api_failures.dart';
import 'package:honeybee/domain/models/phone_number_response_model/phone_number_response_model.dart';
import 'package:honeybee/domain/models/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<Either<ApiFailures, PhoneNumberResponseModel>>
      phoneNumberLogin() async {
    try {
      final response = await http.post(
        Uri.parse(Config.phoneApi),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);

        PhoneNumberResponseModel result =
            PhoneNumberResponseModel.fromJson(jsonMap);

        print(jsonMap);

        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      print("client side error");

      return left(const ApiFailures.clientFailure());
    }
  }

////////////////////---------VerifyOtplogin----------/////////////////////////////

  static Future<Either<ApiFailures, VerifyOtpResponseModel>>
      verifyOtpLogin() async {
    try {
      final response = await http.post(Uri.parse(Config.verifyOtpApi));

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);

        VerifyOtpResponseModel result =
            VerifyOtpResponseModel.fromJson(jsonMap);

        print(jsonMap);

        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      print("client side error");

      return left(const ApiFailures.clientFailure());
    }
  }
}
