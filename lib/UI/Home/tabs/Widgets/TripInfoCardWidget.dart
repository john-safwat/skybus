import 'package:flutter/material.dart';

class TripInfoCardWidget extends StatelessWidget {
  IconData icon;
  String title ;
  String content;
  TripInfoCardWidget({required this.title , required this.content , required this.icon , super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      padding:const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(width: 1 , color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon , size: 25 , color: Colors.black ,),
              const SizedBox(width: 10,),
              Text(title)
            ],
          ),
          const SizedBox(height: 10,),
          Text(content , style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),)
        ],
      ),
    ));
  }
}
