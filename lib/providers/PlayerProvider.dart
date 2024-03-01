import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:my_sports_app/generated/assets.dart';
import 'package:my_sports_app/models/Player.dart';

class PlayerProvider with ChangeNotifier {
  Future<bool> addPlayer(Player player, String token) async {
    final url = Uri.parse(ApiUrl.addPlayer);
    print(player.toJson());

    try {
      final response = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
        body: player.toJson(),
      );
      print(response.body);
      if (response.statusCode == 200) {
        // Handle successful request
        print('Player added successfully');
        return true;
      } else {
        // Handle error
        print('Failed to add player');
      }
    } catch (error) {
      throw error;
    }
    return false;
  }
}
