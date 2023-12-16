import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class RecentTrip extends StatelessWidget {
  const RecentTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.symmetric(vertical:8 ,horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
        
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      color: MyTheme.grey,
    ),
                       child: const Text('SAT 29, JUL 2023',style: TextStyle(fontSize:12 ),)),
                ],
              ),
            Row(
              children:[
                Image.asset('assets/images/a933e5958e4a354cfb8d22665bd244fd 1.png'),
                const SizedBox(width: 20,),
                const Text('Obuar',style:TextStyle(fontSize:18),),
                  const Icon(Icons.circle_outlined,size: 10,),
                    const Text('----------------------'),
                const Icon(Icons.circle,size: 10,),
                    const SizedBox(width:18),
                const Text('Octobar',style: TextStyle(fontSize: 18),),

              ]
            ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('09.00am'),
                  Text('12.00 pm'),
                ],

              ),
            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 5.0,
            ),
            Row(

              children: [
                Container(margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.only(right: 2),
                    child: const Text('2 persons')),
              ],
            )
          ],
        ),
      )

    );
  }
}
