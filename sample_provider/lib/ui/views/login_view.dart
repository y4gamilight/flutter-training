
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/core/view_models/base_model.dart';
import 'package:sample_provider/core/view_models/login_model.dart';
import 'package:sample_provider/locator.dart';
import 'package:sample_provider/ui/shared/app_colors.dart';
import 'package:sample_provider/ui/views/base_view.dart';
import 'package:sample_provider/ui/widgets/login_header.dart';

class LoginView extends StatefulWidget {
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context,model,child) => _bodyUI(model),
    );
  }

  Widget _bodyUI(LoginModel model) {
    return Scaffold(
       backgroundColor: backgroundColor,
              body: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginHeader(controller: controller,
                      validationMessage: model.errorMessage,
                  ),
                  model.state == ViewState.Busy
                  ? CircularProgressIndicator()
                  : FlatButton(
                      color: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        var loginSuccess = await model.login(controller.text);
                        if (loginSuccess) {
                           Navigator.pushNamed(context, '/');
                        }
                      })
                ],
              ),
    );
  }
}