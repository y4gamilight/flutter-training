import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample_provider/core/models/post.dart';
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

  Future<List<Post>> getPostsForUser(int userId) async {
    var posts = List<Post>();
    // Get user posts for id
    var response = await client.get('$endpoint/posts?userId=$userId');

    // parse into List
    var parsed = json.decode(response.body) as List<dynamic>;

    // loop and convert each item to Post
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }
}