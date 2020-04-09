import 'package:sample_provider/core/services/authenticate_service.dart';
import 'package:sample_provider/core/view_models/base_model.dart';
import 'package:sample_provider/locator.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  String errorMessage;

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    if (userId == null) {
      errorMessage = 'Value entered is not a number';
      setState(ViewState.Idle);
      return false;
    }
    var success = await _authenticationService.login(userId);
    setState(ViewState.Idle);
    return success;
  }
}
