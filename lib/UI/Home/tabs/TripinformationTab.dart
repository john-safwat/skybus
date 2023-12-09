import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class Tripinfo extends StatelessWidget {
  Tripinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: myTheme.darkGreen,
        centerTitle: true,
        title: const Text('Trip information'),
        leading: BackButton(
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.all(45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  Text(
                    'Your Ticket',
                    style: TextStyle(
                        color: myTheme.darkGreen, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Text(
                      'Bashar walid',
                      style: (TextStyle(color: myTheme.darkGreen)),
                    )
                  ]),
                  Row(children: [
                    Text(
                      'passenger',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'From',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: myTheme.myOrange,
                      ),
                      Text('----------------------'),
                      Icon(
                        Icons.circle,
                        size: 10,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('TO'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Obour city',
                        style: TextStyle(
                            color: myTheme.myOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'October  city',
                        style: TextStyle(
                            color: myTheme.myOrange,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    Icon(Icons.date_range),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Sunday 12th November',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '9:00 Am',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bus Stop'),
                      Text(
                        'Bus No',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Obour city third distract',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '12N',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'Ticket No.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'W1KJ25345',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(myTheme.myOrange),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
                textStyle: MaterialStateProperty.all(const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
              ),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text('Download Ticket' ,
                    style: myTheme.basicTheme.textTheme.displayMedium,
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
