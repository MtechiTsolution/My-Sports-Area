import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/models/Sport.dart';

class SportProvider with ChangeNotifier {
  Future<List<Sport>> getSports(token) async {
    try {
      final response = await http.post(
        Uri.parse(ApiUrl.sportsList),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        return data.map((json) => Sport.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load sports ${response.body}');
      }
    } catch (e) {
      // Handle any errors here
      print(e.toString());
      throw Exception('Failed to load sports: $e');
    }
  }
}
