//ignore: unused_import
import 'dart:convert';
import 'package:my_sports_app/models/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;
  static String token = '';

  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setShowInro(bool value) {
    return _sharedPreferences!.setBool('showIntro', value);
  }

  bool getShowIntro() {
    return _sharedPreferences!.getBool("showIntro") ?? false;
  }

  Future<void> setlogin(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  bool checklogin() {
    token = _sharedPreferences!.getString("token") ?? '';
    return token.isNotEmpty ? true : false;
  }

  Future<void> setUser(User user) async {
    final jsonData = user.toJson();
    await _sharedPreferences!.setString('user', json.encode(jsonData));
  }

  User? getUser() {
    final jsonString = _sharedPreferences!.getString('user');
    if (jsonString != null) {
      final jsonData = json.decode(jsonString);
      return User.fromJson(jsonData);
    }
    return null;
  }
}
