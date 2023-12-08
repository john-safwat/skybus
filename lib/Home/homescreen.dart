import 'package:flutter/material.dart';
import 'package:skybus/Home/tabs/Settings.dart';
import 'package:skybus/Home/tabs/Tripinformation.dart';
import 'package:skybus/Home/tabs/home.dart';
import 'package:skybus/Home/tabs/profile.dart';
import 'package:skybus/core/Theme.dart';

class homescreen extends StatefulWidget {
  static const String routeName='home';
  const homescreen({super.key});
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs=[home(),Tripinfo(),Settings(),profile()];
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
        backgroundColor: myTheme.darkGreen,
        enableFeedback: false,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: myTheme.myOrange,
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
