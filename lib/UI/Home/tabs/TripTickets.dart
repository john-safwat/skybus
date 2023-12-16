import 'package:flutter/material.dart';
import 'package:skybus/UI/Home/tabs/Widgets/TicketWidget.dart';
import 'package:skybus/core/Theme.dart';

class TripTickets extends StatelessWidget {
  TripTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myTheme.OffWhite,
      appBar: AppBar(
        backgroundColor: myTheme.darkGreen,
        centerTitle: true,
        title: const Text('Trip Tickets'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return const TicketWidget();
                },
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
