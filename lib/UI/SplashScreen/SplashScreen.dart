import 'package:flutter/material.dart';
import 'package:skybus/UI/Login/LoginView.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash Screen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),
        (){
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
    );
    return Scaffold(
        body: Image.asset("assets/images/Splashscreen.png" , fit: BoxFit.fill, width: double.infinity,),
    );
  }
}
