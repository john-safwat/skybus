import 'package:flutter/cupertino.dart';
import 'package:skybus/UI/SignUp/SignupNavigator.dart';
import 'package:skybus/core/Base/baseViewModel.dart';

class SignUpViewModel extends BaseViewModel<SignUpNavigator>{
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  String? nameValidation(String name) {
    if (name.isEmpty) {
      return "Please Enter Your name";
    } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%-]').hasMatch(name)) {
      return "Invalid Character ";
    } else {
      return null;
    }
  }

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

  String? passwordConfirmationValidation(String input) {
    if (input.isEmpty) {
      return "Password Confirm can't be Empty";
    } else if (input != passwordController.text) {
      return "Password Doesn't Match";
    }
    return null;
  }

  void goToLogin(){
    navigator!.goToLogin();
  }

}