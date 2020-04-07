import 'package:flutter/material.dart';

class CenterLayoutPage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Center sample"),
      ),
      body: Center(
        child: Container(
          child: Text("A widget that centers its child within itself."), 
          decoration: BoxDecoration(color: Colors.blue),
        ),   
      ),
    );
  }
}