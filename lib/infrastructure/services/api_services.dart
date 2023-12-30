import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:honeybee/core/config.dart';
import 'package:honeybee/domain/failures/api_failures.dart';
import 'package:honeybee/domain/models/add_message_request_model/add_message_request_model.dart';
import 'package:honeybee/domain/models/add_message_response_model/add_message_response_model.dart';
import 'package:honeybee/domain/models/all_liked_users_response_model/all_liked_users_response_model.dart';
import 'package:honeybee/domain/models/block_user_request_model/block_user_request_model.dart';
import 'package:honeybee/domain/models/block_user_response_model/block_user_response_model.dart';
import 'package:honeybee/domain/models/create_account_response_model/create_account_response_model.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/domain/models/dislike_user_request_model/dislike_user_request_model.dart';
import 'package:honeybee/domain/models/dislike_user_response_model/dislike_user_response_model.dart';
import 'package:honeybee/domain/models/get_message_request_model/get_message_request_model.dart';
import 'package:honeybee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:honeybee/domain/models/get_user_data_response_model/get_user_data_response_model.dart';
import 'package:honeybee/domain/models/last_message_request_model/last_message_request_model.dart';
import 'package:honeybee/domain/models/last_message_response_model/last_message_response_model.dart';
import 'package:honeybee/domain/models/like_user_request_model/like_user_request_model.dart';
import 'package:honeybee/domain/models/like_user_response_model/like_user_response_model.dart';
import 'package:honeybee/domain/models/mark_read_response_model/mark_read_response_model.dart';
import 'package:honeybee/domain/models/matches_response_model/matches_response_model.dart';
import 'package:honeybee/domain/models/payment_platinum_request_model/payment_platinum_request_model.dart';
import 'package:honeybee/domain/models/payment_platinum_response_model/payment_platinum_response_model.dart';
import 'package:honeybee/domain/models/phone_number_request_model/phone_number_request_model.dart';
import 'package:honeybee/domain/models/phone_number_response_model/phone_number_response_model.dart';
import 'package:honeybee/domain/models/search_filter_request_model/search_filter_request_model.dart';
import 'package:honeybee/domain/models/search_filter_response_model/search_filter_response_model.dart';
import 'package:honeybee/domain/models/user_edit_response_model/user_edit_response_model.dart';
import 'package:honeybee/domain/models/verify_otp_request_model/verify_otp_request_model.dart';
import 'package:honeybee/domain/models/verify_payment_request_model/verify_payment_request_model.dart';
import 'package:honeybee/domain/models/verify_payment_response_model/verify_payment_response_model.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../domain/models/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:http_parser/http_parser.dart';

class ApiServices {
  //--------------->>>-----PhoneNumber Login API----->>>------------------------

  static Future<Either<ApiFailures, PhoneNumberResponseModel>> phoneNumberLogin(
      PhoneNumberRequestModel request) async {
    log('entered in phone number login api services');
    try {
      log('entered in try');

      final response = await http.post(
        Uri.parse(Config.phoneApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request.toJson()),
      );
      log('$response--------responce from api service');

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        PhoneNumberResponseModel result =
            PhoneNumberResponseModel.fromJson(jsonMap);
        log(result.toString());
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      log('client side error $e');
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //--------------->>>-----Verify OTP Login API----->>>------------------------

  static Future<Either<ApiFailures, VerifyOtpResponseModel>> verifyOtpLogin(
      VerifyOtpRequestModel request) async {
    try {
      final response = await http.post(
        Uri.parse(Config.verifyOtpApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request.toJson()),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        VerifyOtpResponseModel result =
            VerifyOtpResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //--------------->>>-----Get User Data API----->>>------------------------

  static Future<Either<ApiFailures, GetUserDataResponseModel>>
      getUserData() async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.get(
        Uri.parse(Config.getUserDataApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        GetUserDataResponseModel result =
            GetUserDataResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //--------------->>>-----Create Account API----->>>------------------------

  static Future<Either<ApiFailures, CreateAccountResponseModel>> createAccount({
    required File profilePic,
    required File coverPic,
    required String preference,
    required String phone,
    File? image0,
    File? image1,
    File? image2,
    String? fullName,
    String? birthday,
    String? age,
    String? gender,
    String? location,
    String? faith,
    String? drinking,
    String? smoking,
    String? bio,
    String? relationshipStatus,
    String? email,
  }) async {
    try {
      var request =
          http.MultipartRequest('POST', Uri.parse(Config.createAccountApi));

      request.fields['phone'] = phone;
      request.fields['Preference'] = preference;

      if (fullName != null) {
        request.fields['fullName'] = fullName;
      }

      if (birthday != null) {
        request.fields['birthday'] = birthday;
      }
      if (age != null) {
        request.fields['age'] = age;
      }

      if (location != null) {
        request.fields['location'] = location;
      }
      if (faith != null) {
        request.fields['faith'] = faith;
      }
      if (drinking != null) {
        request.fields['drinking'] = drinking;
      }
      if (smoking != null) {
        request.fields['smoking'] = smoking;
      }
      if (bio != null) {
        request.fields['bio'] = bio;
      }
      if (relationshipStatus != null) {
        request.fields['realationshipStatus'] = relationshipStatus;
      }
      if (email != null) {
        request.fields['email'] = email;
      }

      String filename = profilePic.path.split('/').last;
      String fileExtension = filename.split(".").last;
      request.files.add(http.MultipartFile(
        'profilePic',
        profilePic.readAsBytes().asStream(),
        profilePic.lengthSync(),
        filename: filename,
        contentType: MediaType('image', fileExtension),
      ));

      String filename1 = coverPic.path.split('/').last;
      String fileExtension1 = filename1.split(".").last;
      request.files.add(http.MultipartFile(
        'coverPic',
        coverPic.readAsBytes().asStream(),
        coverPic.lengthSync(),
        filename: filename1,
        contentType: MediaType('image', fileExtension1),
      ));

      if (image0 != null) {
        log('image added');
        String filename = image0.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image0',
          image0.readAsBytes().asStream(),
          image0.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (image1 != null) {
        log('image added');
        String filename = image1.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image1',
          image1.readAsBytes().asStream(),
          image1.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (image2 != null) {
        log('image added');
        String filename = image2.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image2',
          image2.readAsBytes().asStream(),
          image2.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      StreamedResponse streamedResponse = await request.send();
      Response response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        CreateAccountResponseModel result =
            CreateAccountResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      log("client side error $e");

      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //--------------->>>-----Discover Page API----->>>------------------------

  static Future<Either<ApiFailures, DiscoverListResponseModel>>
      discover() async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.get(
        Uri.parse(Config.discoverApi),
        headers: <String, String>{'auth-token': apiToken!},
      );
      if (response.statusCode == 200) {
        DiscoverListResponseModel result =
            DiscoverListResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");

      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Like User API----->>>------------------------

  static Future<Either<ApiFailures, LikeUserResponseModel>> likeUserData(
      LikeUserRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.put(
        Uri.parse(Config.likeUserApi),
        headers: <String, String>{
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        LikeUserResponseModel result = LikeUserResponseModel.fromJson(jsonMap);

        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Dislike User  API----->>>------------------------

  static Future<Either<ApiFailures, DislikeUserResponseModel>> dislikeUserData(
      DislikeUserRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.put(
        Uri.parse(Config.dislikeUserApi),
        headers: <String, String>{
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        DislikeUserResponseModel result =
            DislikeUserResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Matches Page API----->>>------------------------

  static Future<Either<ApiFailures, MatchesListResponseModel>>
      getMatchesData() async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.get(
        Uri.parse(Config.matchesApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
      );
      if (response.statusCode == 200) {
        MatchesListResponseModel result =
            MatchesListResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----All Liked Users API----->>>------------------------

  static Future<Either<ApiFailures, AllLikedUsersListResponseModel>>
      allLikedUsersData() async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.get(
        Uri.parse(Config.likedUsersApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
      );
      if (response.statusCode == 200) {
        AllLikedUsersListResponseModel result =
            AllLikedUsersListResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Edit Account API----->>>------------------------

  static Future<Either<ApiFailures, UserEditResponseModel>> userEditData({
    File? profilePic,
    File? coverPic,
    String? preference,
    String? phone,
    File? image0,
    File? image1,
    File? image2,
    String? fullName,
    String? birthday,
    String? age,
    String? gender,
    String? location,
    String? faith,
    String? drinking,
    String? smoking,
    String? bio,
    String? relationshipStatus,
    String? email,
  }) async {
    try {
      final apiToken = await getTokenFromPrefs();
      var request =
          http.MultipartRequest('POST', Uri.parse(Config.userEditApi));
      request.headers.addAll({
        "Content-Type": "multipart/form-data",
        "Authorization": apiToken!,
      });

      if (fullName != null) {
        request.fields['fullName'] = fullName;
      }
      if (phone != null) {
        request.fields['phone'] = phone;
      }
      if (preference != null) {
        request.fields['Preference'] = preference;
      }
      if (birthday != null) {
        request.fields['birthday'] = birthday;
      }
      if (age != null) {
        request.fields['age'] = age;
      }

      if (location != null) {
        request.fields['location'] = location;
      }
      if (faith != null) {
        request.fields['faith'] = faith;
      }
      if (drinking != null) {
        request.fields['drinking'] = drinking;
      }
      if (smoking != null) {
        request.fields['smoking'] = smoking;
      }
      if (bio != null) {
        request.fields['bio'] = bio;
      }
      if (relationshipStatus != null) {
        request.fields['realationshipStatus'] = relationshipStatus;
      }
      if (email != null) {
        request.fields['email'] = email;
      }

      if (profilePic != null) {
        String filename = profilePic.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'profilePic',
          profilePic.readAsBytes().asStream(),
          profilePic.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (coverPic != null) {
        String filename = coverPic.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'coverPic',
          coverPic.readAsBytes().asStream(),
          coverPic.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (image0 != null) {
        log('image added');
        String filename = image0.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image0',
          image0.readAsBytes().asStream(),
          image0.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (image1 != null) {
        log('image added');
        String filename = image1.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image1',
          image1.readAsBytes().asStream(),
          image1.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      if (image2 != null) {
        log('image added');
        String filename = image2.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'image2',
          image2.readAsBytes().asStream(),
          image2.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      StreamedResponse streamedResponse = await request.send();
      Response response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        UserEditResponseModel result = UserEditResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Block User API----->>>------------------------

  static Future<Either<ApiFailures, BlockUserResponseModel>> blockUserData(
      BlockUserRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.put(
        Uri.parse(Config.blockUserApi),
        headers: <String, String>{
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        BlockUserResponseModel result =
            BlockUserResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Verify Payment API----->>>------------------------

  static Future<Either<ApiFailures, VerifyPaymentResponseModel>>
      verifyPaymentData(VerifyPaymentRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.verifyPaymentApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        VerifyPaymentResponseModel result =
            VerifyPaymentResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Search/Filter API----->>>------------------------

  static Future<Either<ApiFailures, SearchFilterListResponseModel>>
      searchFilterData(SearchFilterRequestModel request) async {
    try {
      log('-----Entered in try section in Search API Services------');
      final apiToken = await getTokenFromPrefs();
      log('>>>>>>>-------API Token in search page is $apiToken----->>>>>>>');
      final Response response = await http.post(
        Uri.parse(Config.searchFilterApi),
        headers: <String, String>{
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      log('----------Response from the API Service is ${response.body}-------------');
      log("--------response.statusCode = ${response.statusCode}--------");
      if (response.statusCode == 200) {
        SearchFilterListResponseModel result =
            SearchFilterListResponseModel.fromJson(jsonDecode(response.body));
        log('-----------Statuscode 200 and response is ${response.body}------------');
        return right(result);
      } else {
        log('-------------Entered in else condition SERVER Failure----------');
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log('---------Entered in Catch-------');
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Payment Platinum  API----->>>------------------------

  static Future<Either<ApiFailures, PaymentPlatinumResponseModel>>
      platinumPaymentData(PaymentPlatinumRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.platinumPaymentApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        PaymentPlatinumResponseModel result =
            PaymentPlatinumResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Chat Add New Message API----->>>------------------------

  static Future<Either<ApiFailures, AddMessageResponseModel>> addNewMessageData(
      AddMessageRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.addMessageApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        AddMessageResponseModel result =
            AddMessageResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Get All Message API----->>>------------------------

  static Future<Either<ApiFailures, GetMessageResponseModel>> getAllMessageData(
      GetMessageRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.getAllMessageApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        GetMessageResponseModel result =
            GetMessageResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

  //--------------->>>-----Last Message API----->>>------------------------

  static Future<Either<ApiFailures, LastMessageResponseModel>> lastMessageData(
      LastMessageRequestModel request) async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.lastMessageApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
        body: request.toJson(),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        LastMessageResponseModel result =
            LastMessageResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }

////////////////////---------MessageRead----------/////////////////////////////

  static Future<Either<ApiFailures, MarkReadResponseModel>>
      markReadMessageData() async {
    try {
      final apiToken = await getTokenFromPrefs();
      final response = await http.post(
        Uri.parse(Config.markReadMessageApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'auth-token': apiToken!,
        },
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonMap = jsonDecode(response.body);
        MarkReadResponseModel result = MarkReadResponseModel.fromJson(jsonMap);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure());
      }
    } catch (e) {
      log("client side error $e");
      return left(const ApiFailures.clientFailure());
    }
  }
}
