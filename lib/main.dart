import 'package:flutter/material.dart';
import 'package:skybus/UI/ForgetPassword/ForgetPasswordView.dart';
import 'package:skybus/UI/Home/homescreen.dart';
import 'package:skybus/UI/Home/tabs/TripinformationTab.dart';
import 'package:skybus/UI/Login/LoginView.dart';
import 'package:skybus/UI/SignUp/SignUpView.dart';
import 'package:skybus/UI/SplashScreen/SplashScreen.dart';
import 'package:skybus/core/Theme.dart';

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
        SignUpView.routeName: (_) => SignUpView(),
        ForgetPasswordView.routeName:(_) => ForgetPasswordView(),
        HomeScreen.routeName:(_) => const HomeScreen(),
        Tripinfo.routeName:(_) => Tripinfo()
      },
      initialRoute: SplashScreen.routeName,
      theme: myTheme.basicTheme,
    );

  }
}