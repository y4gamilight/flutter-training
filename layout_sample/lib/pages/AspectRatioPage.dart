
import 'package:flutter/material.dart';

class AspectRatioPage extends StatefulWidget {
  @override
  _AspectRatioState createState() => _AspectRatioState();
}

class _AspectRatioState extends State<AspectRatioPage> {
  @override 
  Widget build(BuildContext context) {
    return Center(
      child:AspectRatio(
      child: Container(
        decoration: BoxDecoration(color: Colors.blue),
      ),
      aspectRatio: 2.0,
    ));
  }
}