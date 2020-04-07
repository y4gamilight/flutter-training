import 'package:flutter/material.dart';
import 'package:layout_sample/pages/AlignLayoutPage.dart';
import 'package:layout_sample/pages/AspectRatioPage.dart';
import 'package:layout_sample/pages/BaseLinePage.dart';
import 'package:layout_sample/pages/CenterLayoutPage.dart';

class MyHomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout sample"),),
      body: Center (
        child: Column( 
          children: <Widget>[
            FlatButton(child: Text("Center sample"),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => CenterLayoutPage()));
             },),
            SizedBox(height: 10,),
            FlatButton(child: Text("Alignes sample"),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AlignLayoutPage()));
            },) ,
            SizedBox(height: 10,),
            FlatButton(child: Text("Aspect Ratio sample"),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AspectRatioPage()));
            },),
            SizedBox(height: 10,),
            FlatButton(child: Text("Baseline sample"),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => BaseLinePage()));
            },)  
          ],
        ),
      )
    );
  }
}