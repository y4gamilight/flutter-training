
import 'package:flutter/material.dart';
import 'package:sample_provider/ui/shared/text_styles.dart';
import 'package:sample_provider/ui/shared/ui_helper.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController controller;
  final String validationMessage;

  LoginHeader( {@required this.controller, this.validationMessage})

  @override 
  Widget build( BuildContext context) {
    return Column(children: <Widget>[
      Text('Login', style: headerStyle),
      UIHelper.verticalSpaceMedium(),
      Text('Enter a number between 1 - 10', style: subHeaderStyle),
      LoginTextField(controller),
      this.validationMessage != null
          ? Text(validationMessage, style: TextStyle(color: Colors.red))
          : Container()
    ]); 
  }
}