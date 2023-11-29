import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: const Color(0xff0D3E46),
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xff0D3E46),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: double.infinity,
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
                          onPressed: () {},
                          child: Text(
                            "Forget password?",
                            style: myTheme.basicTheme.textTheme.displaySmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login",
                                style: myTheme
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
                          style: myTheme.basicTheme.textTheme.displayMedium,
                        ),
                        TextButton(onPressed: goToSignUp,
                            child: Text("Sign up",
                              style: myTheme.basicTheme.textTheme.displayMedium!.copyWith(color: myTheme.oliveGreen),
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
    );
  }

  @override
  goToHomeScreen() {

  }

  @override
  goToSignUp() {
    Navigator.pushReplacementNamed(context, SignUpView.routeName);
  }
}
