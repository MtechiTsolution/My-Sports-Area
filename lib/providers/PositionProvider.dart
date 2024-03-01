import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/models/Position.dart';
import 'package:my_sports_app/models/Sport.dart';

class PositionProvider with ChangeNotifier {
  List<Position> positions = [];
  Future<List<Position>> getPositions(token, sportId) async {
    try {
      final response = await http.post(
        Uri.parse('${ApiUrl.searchPosition}/$sportId'),
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['data'];
        positions = data.map((json) => Position.fromJson(json)).toList();
        notifyListeners();
        return positions;
      } else {
        throw Exception('Failed to load position');
      }
    } catch (e) {
      // Handle any errors here
      print(e.toString());
      throw Exception('Failed to load position: $e');
    }
  }
}
