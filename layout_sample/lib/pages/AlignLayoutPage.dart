import 'package:flutter/material.dart';

class AlignLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Align Sample")),
      body: Center( 
        child: Stack(
          children: <Widget>[
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.topCenter,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.topRight,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.centerLeft,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.centerRight
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.bottomLeft,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}