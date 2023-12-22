
class Config {
  // static String? token = saveTokenToPrefs(token!).toString();

  // static String? token = getTokenFromPrefs().toString();

  // static String token =
  //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MmU0NTk1NTZkZDQxYzI5MWFiNzE5MiIsImlhdCI6MTcwMjk4NTcwOX0._pRAwVLgk0fSteZ3pRVBOGO2rFjy2Jpcvk1OOxjA8BY';

  // static const apiBaseUrl = 'http://localhost:5000';

////////////////----------API from BackEnd----------/////////////////////

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
  static const platinumPaymentApi = '$apiBaseUrl/api/payment/platinum';
  static const addMessageApi = '$apiBaseUrl/api/chat/addmsg';
  static const getAllMessageApi = '$apiBaseUrl/api/chat/getmsg';
  static const lastMessageApi = '$apiBaseUrl/api/chat/lastmsg';
  static const markReadMessageApi = '$apiBaseUrl/api/chat/markRead';

///////////////////////////////////////////////////////////////////////////

  static const String dummyImageUrl =
      'https://cdn.statusqueen.com/mobilewallpaper/thumbnail/love_mobile_wallpaper-1606.jpg';

  static const String apiBaseUrl =
      "http://10.0.2.2:5000"; // <- emulator local host

  // static const String apiBaseUrl = "http://127.0.0.1:5000"; // <- windows local host
  // static const String apiBaseUrl = "http://localhost:5000"; // <- default local host

//////////////////////////////////////////////////////////////////////////////////////
}
