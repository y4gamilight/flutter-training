import 'package:chat_multi_theme/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    ThemeChanger _themChanger = Provider.of<ThemeChanger>(context);
    return Scaffold (
      appBar: AppBar( 
        title: Text('Home screen'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton( 
              child: Text('Dark Theme'),
              onPressed: () => _themChanger.setTheme(ThemeData.dark()),
            ),
            FlatButton( 
              child: Text('Light Theme'),
              onPressed: () => _themChanger.setTheme(ThemeData.light()),
            )
          ],
        )
      )
    );
  }
}