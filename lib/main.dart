import 'package:flutter/material.dart';
import 'package:skybus/Login/LoginView.dart';
import 'package:skybus/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        LoginView.routeName: (_) => LoginView(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}