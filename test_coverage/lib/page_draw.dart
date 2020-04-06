
import 'package:flutter/material.dart';

class DrawPage extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {
    return Center( 
        child: Container(
          width:100,
          height:100,
          decoration: BoxDecoration( 
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
    );
  }
}