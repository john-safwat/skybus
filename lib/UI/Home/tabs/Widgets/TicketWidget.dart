import 'package:flutter/material.dart';
import 'package:skybus/UI/Home/tabs/TripinformationTab.dart';
import 'package:skybus/core/Theme.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
         color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                      children: [
                        Image.asset("assets/images/Line.png",height: 180,),
                      ],
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("Obour City", style: TextStyle(
                        color: myTheme.oliveGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("   09:00 am", style: TextStyle(
                          color: myTheme.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("3h", style: TextStyle(
                          color: myTheme.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("October City", style: TextStyle(
                          color: myTheme.oliveGreen,
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("   12:00 pm", style: TextStyle(
                          color: myTheme.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    color: myTheme.grey.withOpacity(0.5),
                    width: 1.5,
                    height: 150,
                  ),
                   const Column(
                    children: [
                         Text("Mwaslat Masr", style: TextStyle(
                           color: myTheme.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                         ),
                         ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Avaliable", style: TextStyle(
                        color: myTheme.oliveGreen,
                        fontSize: 18,
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Trip Number", style: TextStyle(
                        color: myTheme.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("NCD243", style: TextStyle(
                        color: myTheme.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Tripinfo.routeName);
                    },
                    child: Container(
                      height: 50,
                      width: 355,
                      decoration: const BoxDecoration(
                        color: myTheme.myOrange,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        )
                      ),
                      child: const Center(
                        child: Text("30 L.E", style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

