import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:skybus/UI/Login/LoginView.dart';
import 'package:skybus/UI/SignUp/SignUpViewModel.dart';
import 'package:skybus/UI/SignUp/SignupNavigator.dart';
import 'package:skybus/core/Base/baseState.dart';
import 'package:skybus/core/CustomTextField.dart';
import 'package:skybus/core/Theme.dart';

class SignUpView extends StatefulWidget {
  static const String routeName = 'Signup';

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends BaseState<SignUpView, SignUpViewModel>
    implements SignUpNavigator {
  SignUpViewModel viewModel = SignUpViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myTheme.darkGreen,
        elevation: 0,
      ),
      body: Container(
        color: myTheme.darkGreen,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SignUp",
                    style: myTheme.basicTheme.textTheme.displayLarge,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  controller: viewModel.nameController,
                  label: "Name",
                  inputType: TextInputType.text,
                  icon: EvaIcons.fileOutline,
                  validation: viewModel.nameValidation),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: viewModel.emailController,
                  label: "Email",
                  inputType: TextInputType.emailAddress,
                  icon: EvaIcons.emailOutline,
                  validation: viewModel.emailValidation),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: viewModel.nameController,
                  label: "Password",
                  inputType: TextInputType.visiblePassword,
                  icon: EvaIcons.lockOutline,
                  validation: viewModel.passwordValidation),
              const SizedBox(height: 20),
              CustomTextField(
                  controller: viewModel.nameController,
                  label: "Confirm Password",
                  inputType: TextInputType.visiblePassword,
                  icon: EvaIcons.lockOutline,
                  validation: viewModel.passwordConfirmationValidation),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: goToLogin,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up",
                        style: myTheme.basicTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 20)),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
                    style: myTheme.basicTheme.textTheme.displaySmall,
                  ),
                  TextButton(
                      onPressed: goToLogin,
                      child: Text(
                        "SignIn",
                        style: myTheme.basicTheme.textTheme.displaySmall!
                            .copyWith(color: myTheme.oliveGreen),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  @override
  void goToLogin() {
    Navigator.pushReplacementNamed(context, LoginView.routeName);
  }
}
