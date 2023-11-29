import 'package:flutter/material.dart';
import 'package:skybus/Login/LoginViewModel.dart';
import 'package:skybus/core/CustomTextField.dart';

class LoginView extends StatelessWidget {
  LoginViewModel viewModel = LoginViewModel();
  static const String routeName = 'Login view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:const Color(0xff0D3E46),
        elevation: 0,
      ),
      body:Container(
        color: const Color(0xff0D3E46),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Image.asset("assets/images/logo.png" , width: double.infinity,),
            CustomTextField(controller: viewModel.emailController,
                label: "Email",
                inputType: TextInputType.emailAddress,
                icon: Icons.email_outlined
            )
          ],
        ),
      ),
    );

  }
}
