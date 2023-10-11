import 'package:shared_preferences/shared_preferences.dart';

//-------------save token
Future<void> saveTokenToPrefs(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token);
}

//-----------read token

Future<String?> getTokenFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

//-----------remove token

Future<void> removeTokenFromPrefs() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}
