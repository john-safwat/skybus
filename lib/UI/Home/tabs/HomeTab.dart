import 'package:flutter/material.dart';
import 'package:skybus/UI/Home/tabs/TripinformationTab.dart';
import 'package:skybus/UI/Home/tabs/Widgets/LoactionWidget.dart';
import 'package:skybus/UI/Home/tabs/Widgets/RecentTripWidget.dart';
import 'package:skybus/UI/Home/tabs/Widgets/SheetDesginWidget.dart';
import 'package:skybus/UI/Home/tabs/Widgets/TripCard.dart';
import 'package:skybus/UI/Home/tabs/Widgets/TripInfoCardWidget.dart';

import 'package:skybus/core/Theme.dart';

class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List trips = [
    'Trip1',
    'Trip2',
    'Trip 3',
    'Trip 4',
    'Trip 5',
    'Trip 6',
    'Trip 7'
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        myTheme.darkGreen,
        myTheme.darkGreen,
        Colors.white,
        Colors.white
      ], stops: [
        0,
        0.35,
        0.35,
        1
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.local_activity,
                    color: myTheme.myOrange,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Book",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: myTheme.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                    color: isSelected?myTheme.grey: myTheme.OffWhite),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(isSelected){
                                isSelected = false;
                              }else isSelected = true;
                            });
                          },
                          child: Expanded(
                              child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: myTheme.grey, width: 1)),
                            child: Text(
                              "One Way",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(isSelected){
                                isSelected = false;
                              }else isSelected = true;
                            });
                          },
                          child: Expanded(
                              child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: myTheme.grey),
                            child: Text(
                              "Round Trip",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: myTheme.grey, width: 1)),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocationWidget(location: "Obour City", title: "From"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 10,
                          ),
                          LocationWidget(location: "October City", title: "To"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TripInfoCardWidget(
                          icon: Icons.calendar_month,
                          title: "Date",
                          content: "29 Jul 2023",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TripInfoCardWidget(
                          icon: Icons.people,
                          title: "Passengers",
                          content: "2 Persons",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: goToTrips,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Find Your Trip",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Recent Trips",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
              Column(
                children: trips.map((e) => const TripCard()).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToTrips() {
    Navigator.pushNamed(context, Tripinfo.routeName);
  }
}

// return Scaffold(
//   backgroundColor: Colors.white,
//   appBar: AppBar(
//     elevation: 0,
//     leadingWidth: double.infinity,
//     backgroundColor: MyTheme.darkGreen,
//     centerTitle: true,
//     title: Container(
//         padding: const EdgeInsets.all(20),
//         child: Image.asset(
//           'assets/images/logo.png',
//           scale: 1,
//         )),
//   ),
//   body: Column(
//     children: [
//       Stack(
//         alignment: Alignment.topCenter,
//         children: [
//           Container(
//             color: MyTheme.darkGreen,
//             height: MediaQuery.of(context).size.height * .1,
//             child: Column(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   child: const Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Icon(
//                             Icons.turned_in,
//                             size: 30,
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Text(
//                             'Book',
//                             style: TextStyle(
//                                 color: Colors.white, fontSize: 25),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               border: Border.all(color: Colors.black),
//               color: Colors.white,
//             ),
//             padding: const EdgeInsets.all(18),
//             margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
//             child: Column(
//               children: [
//                 SheetDesgin(),
//               ],
//             ),
//           ),
//         ],
//       ),
//       Container(
//         margin: const EdgeInsets.all(2),
//         child: const Row(
//           children: [
//             Text(
//               'Recent Trips',
//               style: TextStyle(color: MyTheme.darkGreen),
//             ),
//           ],
//         ),
//       ),
//       Expanded(
//         flex: 2,
//         child: ListView.builder(
//           itemCount: trips.length,
//           itemBuilder: (context, index) {
//             return const RecentTrip();
//           },
//         ),
//       )
//     ],
//   ),
// );
