import 'package:flutter/material.dart';

class PinkPage extends StatelessWidget {
  static String route = "routePinkPage";
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pink Page")
      ),
      body: Center( 
        child: Container(
      decoration: BoxDecoration(
        color: Colors.pink,
      ),
    ),
      ),
    );
  }
}