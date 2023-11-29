import 'package:flutter/cupertino.dart';
import 'package:skybus/UI/Login/LoginNavigator.dart';

import 'package:skybus/core/Base/baseViewModel.dart';

class LoginViewModel extends BaseViewModel<LoginNavigator>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String? emailValidation(String input) {
    if (input.isEmpty) {
      return "This field is required";
    } else if (!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+"
    r"@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
    r"{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(input)) {
      return "Please Enter a Valid Email";
    }
    return null;
  }

  String? passwordValidation(String input) {
    if (input.isEmpty) {
      return "This field is required";
    } else if (input.length < 8) {
      return "Password should be more than 8 characters";
    }
    return null;
  }

  @override
  goToHomeScreen() {
      navigator!.goToHomeScreen();
  }

  @override
  goToSignUp() {
    navigator!.goToSignUp();
  }
}