import 'dart:convert';
import 'dart:io';

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
          PrefUtils().setUser(userData);
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
          PrefUtils().setUser(userData);
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

  Future<bool> updateUser(User user, String token) async {
    final url = Uri.parse('${ApiUrl.updateUser}/${user.id}');
    var request = http.MultipartRequest('POST', url);
    try {
      var usermap = user.toJson();
      usermap.remove('id');
      final response = await http.post(
        url,
        body: usermap,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Token': token,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == true) {
          // print(jsonResponse);
          User userData = User.fromJson(jsonResponse['data']);
          PrefUtils().setlogin(userData.rememberToken);
          PrefUtils().setUser(userData);
          print(
              'update successful for user ${userData.firstName} ${userData.lastName}');
          return true;
        } else {
          print('update failed');
        }
      } else {
        print('Failed to update: ${response.statusCode}');
        throw Exception('Failed to update user');
      }
    } catch (e) {
      print('Error during update user: $e');
      // Handle the error here
    }
    return false;
  }

  Future<bool> updateUserwithImage(
      User user, File imageFile, String token) async {
    final url = Uri.parse('${ApiUrl.updateUser}/${user.id}');
    try {
      var request = http.MultipartRequest('POST', url);

      // Add user data to the request
      var usermap = user.toJson();
      usermap.remove('id');
      Map<String, String> datmap = {};
      usermap.forEach((key, value) {
        if (value != null) {
          datmap[key] = value;
        }
      });

      request.fields.addAll(datmap);

      // Attach the image file to the request
      var imageStream = http.ByteStream(imageFile.openRead());
      var length = await imageFile.length();
      var multipartFile = http.MultipartFile('image', imageStream, length,
          filename: 'user_image.jpg');
      request.files.add(multipartFile);

      // Set headers
      request.headers['Authorization'] = 'Bearer $token';
      request.headers['Token'] = token;

      // Send the request
      var response = await request.send();

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(await response.stream.bytesToString());
        if (jsonResponse['status'] == true) {
          // print(jsonResponse);
          User userData = User.fromJson(jsonResponse['data']);
          PrefUtils().setlogin(userData.rememberToken);
          PrefUtils().setUser(userData);
          print(
              'update successful for user ${userData.firstName} ${userData.lastName}');
          return true;
        } else {
          print('update failed');
        }
      } else {
        print('Failed to update: ${response.statusCode}');
        throw Exception('Failed to update user');
      }
    } catch (e) {
      print('Error during update user: $e');
      // Handle the error here
    }
    return false;
  }
}
