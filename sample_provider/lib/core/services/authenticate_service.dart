
import 'dart:async';

import 'package:sample_provider/core/models/user.dart';
import 'package:sample_provider/core/services/api.dart';
import 'package:sample_provider/locator.dart';

class AuthenticationService {
  // Inject our Api
  Api _api = locator<Api>();

  StreamController<User> userController = StreamController<User>();
  Future<bool> login(int userId) async {
    // Get the user profile for id
    var fetcheduser = await _api.getUserProfile(userId);

    // Check if success
    var hasUser = fetcheduser != null;
    if(hasUser) {
      userController.add(fetcheduser);
    }
    return hasUser;
  }
}