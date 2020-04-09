import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/core/models/user.dart';
import 'package:sample_provider/core/services/authenticate_service.dart';
import 'package:sample_provider/locator.dart';
import 'package:sample_provider/ui/views/home_view.dart';
import 'package:sample_provider/ui/views/login_view.dart';
import 'package:sample_provider/ui/views/post_view.dart';

void main()  {
 setupLocator();
 runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (BuildContext context) =>
          locator<AuthenticationService>().u.stream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: 'login',
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case 'post':
        return MaterialPageRoute(builder: (_) => PostView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}