import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Green Page"),
      ),
      body: Center( 
        child: Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
    ),
      ),
    );
  }
}