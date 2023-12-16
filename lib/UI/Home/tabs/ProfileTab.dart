import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:skybus/UI/SignUp/SignUpViewModel.dart';
import 'package:skybus/core/CustomProfileTextField.dart';
import 'package:skybus/core/CustomTextField.dart';
import 'package:skybus/core/Theme.dart';

class profile extends StatelessWidget {
  profile({super.key});
  SignUpViewModel viewModel = SignUpViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myTheme.OffWhite,
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: myTheme.darkGreen,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage("assets/images/icons8-rihanna-48.png"),
                        radius: 35,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Khalid Abdelsattar",style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                      ),),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.more_vert_rounded, color: Colors.white, size: 30,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CustomProfileTextField(
                    controller: viewModel.nameController,
                    label: "Khalid Abdelsattar",
                    inputType: TextInputType.text,
                    icon: EvaIcons.fileOutline,
                    validation: viewModel.nameValidation),
                SizedBox(
                  height: 30,
                ),
                CustomProfileTextField(
                    controller: viewModel.nameController,
                    label: "Khalidabdelsattar@gmail.com",
                    inputType: TextInputType.text,
                    icon: EvaIcons.emailOutline,
                    validation: viewModel.nameValidation),
                SizedBox(
                  height: 30,
                ),
                CustomProfileTextField(
                    controller: viewModel.nameController,
                    label: "Change Password",
                    inputType: TextInputType.text,
                    icon: EvaIcons.lockOutline,
                    validation: viewModel.nameValidation),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: myTheme.basicTheme.textTheme.displayMedium,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: myTheme.darkGreen.withOpacity(0.9),
                    hintText: "Booking History",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),
                    suffixIcon: Icon(Icons.arrow_forward_ios,color: Colors.white),
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

                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),

                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Log Out",
                            style: myTheme.basicTheme.textTheme.displayMedium!
                                .copyWith(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
