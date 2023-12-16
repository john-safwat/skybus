import 'package:flutter/material.dart';
import 'package:skybus/UI/ForgetPassword/ForgetPasswordView.dart';
import 'package:skybus/UI/Home/homescreen.dart';
import 'package:skybus/UI/Login/LoginNavigator.dart';
import 'package:skybus/UI/Login/LoginViewModel.dart';
import 'package:skybus/UI/SignUp/SignUpView.dart';
import 'package:skybus/core/Base/baseState.dart';
import 'package:skybus/core/CustomTextField.dart';
import 'package:skybus/core/Theme.dart';

class LoginView extends StatefulWidget {
  static const String routeName = 'Login view';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView , LoginViewModel>
    implements LoginNavigator{
  LoginViewModel viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.darkGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 100,),
                Image.asset(
                  "assets/images/logo.png",
                  width: MediaQuery.sizeOf(context).width * 0.6,
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: viewModel.formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          validation: viewModel.emailValidation,
                          controller: viewModel.emailController,
                          label: "Email",
                          inputType: TextInputType.emailAddress,
                          icon: Icons.email_outlined),
                      const SizedBox(height: 20),
                      CustomTextField(
                          validation: viewModel.passwordValidation,
                          controller: viewModel.passwordController,
                          label: "Password",
                          inputType: TextInputType.visiblePassword,
                          icon: Icons.lock_outline),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: goToForgetPassword,
                            child: Text(
                              "Forget password?",
                              style: MyTheme.basicTheme.textTheme.displaySmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: goToHomeScreen,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Login",
                                  style: MyTheme
                                      .basicTheme.textTheme.displayMedium!
                                      .copyWith(fontSize: 20)),
                            ],
                          ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have Account?",
                            style: MyTheme.basicTheme.textTheme.displayMedium,
                          ),
                          TextButton(onPressed: goToSignUp,
                              child: Text("Sign up",
                                style: MyTheme.basicTheme.textTheme.displayMedium!.copyWith(color: MyTheme.oliveGreen),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  goToHomeScreen() {
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }

  @override
  goToSignUp() {
    Navigator.pushReplacementNamed(context, SignUpView.routeName);
  }

  @override
  goToForgetPassword() {
    Navigator.pushReplacementNamed(context, ForgetPasswordView.routeName);
  }
}
