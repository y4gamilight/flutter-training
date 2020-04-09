import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample_provider/core/models/user.dart';
class Api {
  static String endpoint = 'https://jsonplaceholder.typicode.com';
  var client = http.Client();

 Future<User> getUserProfile(int userId) async {
    // Get user profile for id
    var response = await client.get('$endpoint/users/$userId');

    // Convert and return
    return User.fromJson(json.decode(response.body));
  }
}