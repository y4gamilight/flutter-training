import 'package:chat_multi_theme/blocs/theme.dart';
import 'package:chat_multi_theme/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger> (
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme()  
    );
  }
} 

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: HomePage(),
      theme: theme.getTheme(),
    );
  }
}

