import 'package:flutter/material.dart';
import 'package:skybus/UI/Login/LoginView.dart';
import 'package:skybus/core/Theme.dart';

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
        backgroundColor: MyTheme.darkGreen,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(),
            Image.asset("assets/images/logo.png" , fit: BoxFit.fill, width: MediaQuery.sizeOf(context).width * 0.7,),
          ],
        ),
    );
  }
}
