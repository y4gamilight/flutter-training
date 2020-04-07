import 'package:flutter/material.dart';

class BaseLinePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Center (
      child: Row (children: <Widget>[
        Text("text 1"), 
        Baseline(child:Text("hello 2",
        style:TextStyle(fontSize: 20)) ,
        baselineType: TextBaseline.alphabetic,
        baseline: 100,) ,  
        Baseline(
          child: Text("Text3"),
          baseline: 40,
          baselineType: TextBaseline.alphabetic,
        )
      ],)
    ),
    );
  }
}