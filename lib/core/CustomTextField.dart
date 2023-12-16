import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String label;
  TextInputType inputType;
  IconData icon;
  Function validation;
  CustomTextField(
      {required this.controller,
      required this.label,
      required this.inputType,
      required this.icon,
        required this.validation
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: MyTheme.basicTheme.textTheme.displayMedium,
      validator: (value) => validation(value),
      controller: controller,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: MyTheme.basicTheme.textTheme.displaySmall,
        prefixIcon: Icon(icon),
        prefixIconColor: MyTheme.oliveGreen,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:const BorderSide(
              width: 2,
              color: Colors.white
            )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide:const BorderSide(
            width: 2,
            color: Colors.white
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color:Colors.white
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.red,
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.red,
            )),
      ),

      keyboardType: inputType,
    );
  }
}
