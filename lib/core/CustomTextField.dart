import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String label;
  TextInputType inputType;
  IconData icon;
  CustomTextField(
      {required this.controller,
      required this.label,
      required this.inputType,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: Icon(icon),
          prefixIconColor: myTheme.grey,
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
      ),
    );
  }
}
