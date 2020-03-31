import 'package:flutter/material.dart';
import 'package:todo_sample/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Demo',
      theme: ThemeData( 
        primaryColor:  Colors.purple
      ),
      home:MyHomePage(),
    );
  
  }
}