import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skybus/UI/ForgetPassword/ForgetPasswordNavigator.dart';
import 'package:skybus/UI/ForgetPassword/FotgerPasswordViewModel.dart';
import 'package:skybus/UI/Login/LoginView.dart';
import 'package:skybus/core/Base/baseState.dart';
import 'package:skybus/core/CustomTextField.dart';
import 'package:skybus/core/Theme.dart';

class ForgetPasswordView extends StatefulWidget {
  static const String routeName = 'Forget password';

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState
    extends BaseState<ForgetPasswordView, ForgetPasswordViewModel>
    implements ForgetPasswordNavigator {
  ForgetPasswordViewModel viewModel = ForgetPasswordViewModel();
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
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forget password",
                      style: MyTheme.basicTheme.textTheme.displayLarge,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/svj/forgetPassword.svg",
                  width: MediaQuery.of(context).size.width - 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter your Email so we can send \n you a Link",
                      style: MyTheme.basicTheme.textTheme.displayMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: viewModel.resetPasswordController,
                  label: "Enter Email",
                  validation: viewModel.emailValidation,
                  icon: EvaIcons.emailOutline,
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: goToLoginScreen,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Send",
                          style: MyTheme.basicTheme.textTheme.displayMedium!
                              .copyWith(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  goToLoginScreen() {
    Navigator.pushReplacementNamed(context, LoginView.routeName);
  }
}
