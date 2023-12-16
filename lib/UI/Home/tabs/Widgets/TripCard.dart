import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1 , color: Colors.black)
      ),
      child: Row(
        children: [
          Image.asset("assets/images/a933e5958e4a354cfb8d22665bd244fd 1.png", height: 70,fit: BoxFit.cover,),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: myTheme.oliveGreen,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text("SAT 29,Jul 2023" , style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.black),),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Obour" , style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
                    Expanded(child: Container( )),
                    Text("October" , style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("09:00 am" , style: Theme.of(context).textTheme.displaySmall!.copyWith(color: myTheme.grey, fontWeight: FontWeight.bold),),
                    Expanded(child: Container( )),
                    Text("12L00 pm" , style: Theme.of(context).textTheme.displaySmall!.copyWith(color: myTheme.grey, fontWeight: FontWeight.bold),),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text("2 Persons" , style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
