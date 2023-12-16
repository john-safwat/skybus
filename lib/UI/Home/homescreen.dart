import 'package:flutter/material.dart';
import 'package:skybus/UI/Home/tabs/SettingsTab.dart';
import 'package:skybus/UI/Home/tabs/TripinformationTab.dart';
import 'package:skybus/UI/Home/tabs/HomeTab.dart';
import 'package:skybus/UI/Home/tabs/ProfileTab.dart';
import 'package:skybus/UI/Home/tabs/TripTickets.dart';

import 'package:skybus/core/Theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _homescreenState();
}

class _homescreenState extends State<HomeScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs=[HomeTab(),TripTickets(),Tripinfo(),profile()];
    const List<BottomNavigationBarItem> items=[
      BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "home"

      ),
      BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/icon _ticket_.png')),
          label:"tickets"
      ),

      BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label:"settings"

      ),
      BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/icon _profile circle_.png')),
          label:"profile"
      ),

    ];

    return Scaffold(
      body:tabs[index] ,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyTheme.darkGreen,
        enableFeedback: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: MyTheme.myOrange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: items,
        currentIndex: index,
        onTap: (index){
          setState(() {
            this.index=index;
          });
        },
      ),

    );
  }
}
