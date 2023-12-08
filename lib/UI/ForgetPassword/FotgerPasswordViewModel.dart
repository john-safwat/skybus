import 'package:flutter/material.dart';
import 'package:skybus/UI/ForgetPassword/ForgetPasswordNavigator.dart';
import 'package:skybus/core/Base/baseViewModel.dart';

class ForgetPasswordViewModel extends BaseViewModel<ForgetPasswordNavigator>{
  TextEditingController resetPasswordController  = TextEditingController();

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

  goToLoginScreen(){
   navigator!.goToLoginScreen();
  }
}