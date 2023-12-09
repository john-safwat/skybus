import 'package:flutter/material.dart';
import 'package:skybus/UI/Home/tabs/Widgets/RecentTripWidget.dart';
import 'package:skybus/UI/Home/tabs/Widgets/SheetDesginWidget.dart';

import 'package:skybus/core/Theme.dart';

class HomeTab extends StatelessWidget {
  final List Trips = [
    'Trip1',
    'Trip2',
    'Trip 3',
    'Trip 4',
    'Trip 5',
    'Trip 6',
    'Trip 7'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: double.infinity,
        backgroundColor: myTheme.darkGreen,
        centerTitle: true,
        title: Container(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/logo.png',
              scale: 1,
            )),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                color: myTheme.darkGreen,
                height: MediaQuery.of(context).size.height * .1,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.turned_in,
                                size: 30,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Book',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(18),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Column(
                  children: [
                    SheetDesgin(),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(2),
            child: const Row(
              children: [
                Text(
                  'Recent Trips',
                  style: TextStyle(color: myTheme.darkGreen),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: Trips.length,
              itemBuilder: (context, index) {
                return const RecentTrip();
              },
            ),
          )
        ],
      ),
    );
  }
}
