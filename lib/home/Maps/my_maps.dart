import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyMaps extends StatefulWidget {
  const MyMaps({super.key});

  @override
  State<MyMaps> createState() => _MyMapsState();
}

class _MyMapsState extends State<MyMaps> {
  @override
  final date = DateTime.now();
  final mode = 'S';
  bool value = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('Select your bike',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            Divider(),
            InkWell(
              onTap: (){
                print('Change the colour');
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  color: Color.fromARGB(180,255,255,255),
                  elevation: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: this.value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Speedster_1',style: TextStyle(fontSize: 16),),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 45,
                                        child: Icon(Icons.battery_5_bar_sharp)
                                    ),
                                    Text('80%',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                                    VerticalDivider(),
                                    Text('61km',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/bike.webp')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                print('Change the colour');
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Card(
                  color: Color.fromARGB(180,255,255,255),
                  elevation: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: this.value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Speedster_2',style: TextStyle(fontSize: 16),),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 45,
                                        child: Icon(Icons.battery_5_bar_sharp)
                                    ),
                                    Text('80%',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                                    VerticalDivider(),
                                    Text('61km',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/bike.webp')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Spacer(),
            Expanded(
              child: SlidingUpPanel(
                // panel with centered text
                panel: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                        Divider(
                          thickness: 5,
                          endIndent: 121,
                          indent: 121,
                          color: Colors.black12,
                        ),
                        SizedBox(height: 80,),
                        Text('Your recent ride',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text('8 mins'),
                              VerticalDivider(
                              ),
                              Text('1.3 km'),
                              VerticalDivider(),
                              Text('$date'),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          width: 400,
                          height: 55,
                          child: Card(
                            color: Color.fromARGB(180,255,255,255),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Mode : '),
                                      Text('$mode',style: TextStyle(color: Colors.orange),),
                                    ],
                                  ),
                                  Container(width: 400,height: 7,color: Colors.orange,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 130,
                          child: Card(
                            color: Color.fromARGB(180, 255, 255, 255),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Travel history',style: TextStyle(fontWeight: FontWeight.w500),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.location),
                                      Text('1st main, 2nd block, Vijayanagar, Maharash.....'),
                                  ],
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10,),Text('|'),
                                        VerticalDivider(
                                          width: 3,
                                          indent: 23,
                                          color: Colors.black12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text('1st main, 2nd block, Vijayanagar, Maharash.....'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 535,
                          child: Card(
                            color: Color.fromARGB(180, 255, 255, 255),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ride Statistics',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Efficiency',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                      Spacer(),
                                      Text('4.5 ',style: TextStyle(fontWeight: FontWeight.w500),),
                                      Text('Wh/km',style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Text('Projected Range',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                      Spacer(),
                                      Text('47 ',style: TextStyle(fontWeight: FontWeight.w500),),
                                      Text('km/hr',style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Text('Top Speed',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                      Spacer(),
                                      Text('60 ',style: TextStyle(fontWeight: FontWeight.w500),),
                                      Text('km/hr',style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Text('Average Speed',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                      Spacer(),
                                      Text('22 ',style: TextStyle(fontWeight: FontWeight.w500),),
                                      Text('km/hr',style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                  Divider(),
              
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // collapsed with container
                collapsed: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 5,
                        endIndent: 121,
                        indent: 121,
                        color: Colors.black12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Text(
                              "Your recent ride",
                              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // main body
                body: Center(
                  child: Text("This is the Widget behind the sliding panel"),
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
