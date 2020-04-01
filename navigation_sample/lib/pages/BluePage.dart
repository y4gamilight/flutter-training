import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  static const String route = "routeBluePage";
  final Map<String,String> arguments;
  BluePage(this.arguments);
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blue Page")
      ),
      body: Center( 
        child: Container(
          child: Text(arguments["content"]),
          decoration: BoxDecoration(
             color: Colors.blue,
         ),
    ),
      ),
    );
  }
}