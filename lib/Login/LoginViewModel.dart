import 'package:flutter/cupertino.dart';

class LoginViewModel{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}