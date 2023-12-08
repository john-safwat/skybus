import 'package:flutter/material.dart';
import 'package:skybus/core/Theme.dart';

class SheetDesgin extends StatefulWidget {
   SheetDesgin();

  @override
  State<SheetDesgin> createState() => _SheetDesginState();
}

class _SheetDesginState extends State<SheetDesgin> {

  bool isselected=false;
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                 GestureDetector(
                   onTap:() {
                     setState(() {
                       if(isselected) {
                         isselected = false;
                       }
                       else{
                         isselected=true;
                       }
                     });
                   },
                   child: Container(
                    padding: const EdgeInsets.all(10),
                     child: const Text('one Way',style: TextStyle(fontSize: 16, )),
                    decoration: BoxDecoration(
                      color:isselected ?Colors.white :Colors.grey ,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color:Colors.black),
                    ),
                ),
                 ),
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text('Round Trip',style: TextStyle(fontSize: 16),),
                  decoration: BoxDecoration(
                    color:isselected ?Colors.grey :Colors.white,
                      borderRadius: BorderRadius.circular(15) ,
                    border: Border.all(color:Colors.black),
                  ),

                ),
              )
            ],
              ),
             const SizedBox(height: 20,),
                 Container(
                   padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(18),
                  border: Border.all(color:Colors.black),
                   ),
                   child:const Column(
                     children:[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text('From',style: TextStyle(fontSize: 16),)

                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Icon(Icons.location_on),
                           SizedBox(width: 20,),
                           Text('obuar city',style: TextStyle(fontSize: 20),),
                         ],
                       ),
                       Divider(
                         color: Colors.black,
                         height: 24.0,
                         thickness: 1,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                            Text('TO',style: TextStyle(fontSize: 16),)
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Icon(Icons.location_on),
                           SizedBox(width: 20,),
                           Text('octobar city',style: TextStyle(fontSize: 20),),
                         ],
                       ),
                     ]
                   )
                 ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color:Colors.black),
                    ),
                    //margin: EdgeInsets.all(4),
                    child: const Column(
                      children:[
                          Row(
                            mainAxisAlignment:MainAxisAlignment.start ,
                            children: [
                              Icon(Icons.date_range),
                              SizedBox(width: 8,),
                              Text('Date'),
                                 ],
                                 ),
                             Row(children: [
                                  Text('29 Jul 2023'),
                                ],),
                            ],

                           ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color:Colors.black),

                    ),
                    child: const Column(
                      children:[
                        Row(
                          children: [
                            Icon(Icons.people),
                            SizedBox(width: 8,),
                            Text('passengers'),
                          ],
                        ),
                        SizedBox(width: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Text('2 persons'),
                        ],),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: ElevatedButton(

     onPressed: (){}, child: const Text('Find Your Trip',style: TextStyle(color: Colors.white),)
    ),
    ),
                ],
              )

      ],

          );



  }
}
