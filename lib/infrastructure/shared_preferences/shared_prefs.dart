import 'package:shared_preferences/shared_preferences.dart';

//--------------->>>-----Save Token----->>>------------------------

Future<void> saveTokenToPrefs(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
}

//--------------->>>-----Read Token----->>>------------------------

Future<String?> getTokenFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

//--------------->>>-----Remove Token----->>>------------------------

Future<void> removeTokenFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}

//--------------->>>-----Save userId----->>>------------------------

Future<void> saveUserIdToPrefs(String userId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('userId', userId);
}

//--------------->>>-----Read Token----->>>------------------------

Future<String?> getuserIdFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userId');
}

//--------------->>>-----Remove Token----->>>------------------------

Future<void> removeUserIdFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('userId');
}