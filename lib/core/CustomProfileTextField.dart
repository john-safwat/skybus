
import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class CustomProfileTextField extends StatelessWidget {
  TextEditingController controller;
  String label;
  TextInputType inputType;
  IconData icon;
  Function validation;
  CustomProfileTextField(
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
      style: myTheme.basicTheme.textTheme.displayMedium,
      validator: (value) => validation(value),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: myTheme.darkGreen.withOpacity(0.9),
        hintText: label,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,

        ),
        prefixIcon:Icon(icon),
        prefixIconColor: myTheme.oliveGreen,
        suffixIcon: Icon(Icons.edit,color: Colors.white),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            ),
      ),

      keyboardType: inputType,

    );
  }
}
