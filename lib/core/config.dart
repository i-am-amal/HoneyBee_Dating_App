class Config {
  static const String dummyImageUrl =
      'https://cdn.statusqueen.com/mobilewallpaper/thumbnail/love_mobile_wallpaper-1606.jpg';
}

class ApiServices {
  static const apiBaseUrl = 'http://localhost:5000';

  static const phoneApi = '$apiBaseUrl/api/phone';
  static const verifyOtpApi = '$apiBaseUrl/api/verifyOtp';
  static const getUserDataApi = '$apiBaseUrl/api/userData';
  static const createAccountApi = '$apiBaseUrl/api/createAccount';
  static const discoverApi = '$apiBaseUrl/api/discover';
  static const likeUserApi = '$apiBaseUrl/api/likeUser';
  static const dislikeUserApi = '$apiBaseUrl/api/dislikeUser';
  static const matchesApi = '$apiBaseUrl/api/matches';
  static const likedUsersApi = '$apiBaseUrl/api/allLikedUsers';
  static const userEditApi = '$apiBaseUrl/api/userEdit';
  static const blockUserApi = '$apiBaseUrl/api/blockUser';
  static const verifyPaymentApi = '$apiBaseUrl/api/paymentVerified';
  static const searchFilterApi = '$apiBaseUrl/api/searchFilter';

  // static const String apiBaseUrl ="http://10.0.2.2:5000"; // <- emulator local host
  // static const String apiBaseUrl = "http://127.0.0.1:5000"; // <- windows local host
  // static const String apiBaseUrl = "http://localhost:5000"; // <- default local host
}
