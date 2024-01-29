import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_sports_app/Utils/pref_utils.dart';
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/models/User.dart';

import '../Screens/Authentication/player_auth/CreateAccount.dart'; // Import HTTP package

class UserProvider with ChangeNotifier {
  Future<bool> registerUser(UserRegistration userData) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.registerUser),
        body: userData.toJson(),
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          User userData = User.fromJson(jsonResponse['data']);
          PrefUtils().setlogin(userData.rememberToken);
          print(
              'register successful for user ${userData.firstName} ${userData.lastName}');
          return true;
        } else {
          print('register failed');
        }
      } else {
        print('Failed to login ${response.body}: ${response.statusCode}');
      }
    } catch (error) {
      print('Error registering user: $error');
    }
    return false;
  }

  Future<bool> loginUser(UserLogin userData) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.loginUser),
        body: userData.toMap(),
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          User userData = User.fromJson(jsonResponse['data']);
          PrefUtils().setlogin(userData.rememberToken);
          print(
              'Login successful for user ${userData.firstName} ${userData.lastName}');
          return true;
        } else {
          print('Login failed');
        }
      } else {
        print('Failed to login: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during login: $error');
    }
    return false;
  }

  Future<bool> forgotPassword(String email) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.forgotPassword),
        body: {
          'email': email,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          print('Password reset email sent to $email');
          return true;
        } else {
          print('sent failed');
        }
      } else {
        print('Failed to send reset email: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during password reset request: $error');
    }
    return false;
  }

  Future<bool> verifyResetPassword(String token, String email) async {
    try {
      final response = await http.post(
        Uri.parse('${ApiUrl.verifyResetPass}/$token'),
        body: {
          'email': email,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          print('Password reset verified for token: ${response.body}');
          return true;
        } else {
          print('token failed');
        }
      } else {
        print('Failed to verify password reset: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during password reset verification: $error');
    }
    return false;
  }

  Future<bool> resetPassword({
    required String token,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse(ApiUrl.resetPassword);
    try {
      final response = await http.post(
        url,
        body: {
          'token': token,
          'email': email,
          'password': password,
          'password_confirmation': password,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          print('Password reset ');
          return true;
        } else {
          print('Password reset failed');
        }
      } else {
        throw Exception('Failed to reset password');
      }
    } catch (error) {
      print(': $error');
    }
    return false;
  }

  Future<bool> logoutUser(String token) async {
    final url = Uri.parse(ApiUrl.logoutUser);

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Token': token,
        },
      );

      if (response.statusCode == 200) {
        print('Logout successful');
        return true;
      } else {
        print('Failed to logout: ${response.statusCode}');
        throw Exception('Failed to logout');
      }
    } catch (e) {
      print('Error during logout: $e');
      // Handle the error here
    }
    return false;
  }
}
