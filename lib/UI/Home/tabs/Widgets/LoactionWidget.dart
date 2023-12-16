import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  String title ;
  String location ;
  LocationWidget({required this.location , required this.title , super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title , style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black)),
        const SizedBox(height: 15,),
        Row(
          children: [
            const Icon(Icons.location_on_outlined , color: Colors.black , size: 30,) ,
            const SizedBox(width: 10,),
            Text(location, style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black)),
          ],
        ),
      ],
    );
  }
}
