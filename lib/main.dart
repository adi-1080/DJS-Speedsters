import 'dart:developer';

import 'package:djs_speedsters/MyBike/my_bike.dart';
import 'package:djs_speedsters/Pages/home.dart';
import 'package:djs_speedsters/Profile/profile.dart';
import 'package:djs_speedsters/home/BikeCard.dart';
import 'package:djs_speedsters/Service/service.dart';
import 'package:djs_speedsters/home/BikeDetailView1.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/BikeDetailView2.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Maps.dart';
import 'package:djs_speedsters/home/Maps/my_maps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DJS Speedsters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 232, 29)),
        fontFamily: 'Quicksand',
        useMaterial3: true,
      ),
      // home: MyHomePage(),
      routes: {
        "/" : (context) => MyHomePage(),
        "/b1" : (context) => BikeDetailView1(),
        "/b2" : (context) => BikeDetailView2(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  num distance = 31;
  final charging_level = 69;
  final distance_covered = 26;
  final charging_since = 30;
  final time_hr = 2;
  final time_min = 09;
  final battery = 80;
  final charging_status = true;
  var _selectedItem = 0;

  var _pagesData = [Home(), MyMaps(), Service(), Profile()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:
        _pagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItem,
        onTap: (newValue){
          setState(() {
            _selectedItem = newValue;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill),
              label: 'Home',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.location),
              label: 'Map',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.wrench_fill),
              label: 'Service',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Profile',
              backgroundColor: Colors.black
          ),

        ],
      ),
    );
  }
}




/*
SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 300,
                      height: 70,
                      //color: Colors.grey,
                      child: Text('My Phantom 2.0',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                    ),
                    IconButton(onPressed: (){
                      print('List of Bikes');
                    },
                    icon: Icon(Icons.arrow_drop_down),
                    ),
                    Icon(Icons.notifications),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Card(
                    color: const Color.fromARGB(255, 255, 246, 166),
                    elevation: 2.4,
                    shadowColor: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          width: 380,
                          height: 70,
                          child: ListView.separated(itemBuilder: (context,index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text('$distance', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
                                            SizedBox(width: 7,),
                                            Text('km', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('26 km'),
                                            SizedBox(width: 20,),
                                            Container(width: 2, height: 40, color: Colors.black,),
                                            Text('2hr 09min'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text('30mins'),
                                            Text('80%'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(),
                                    Column(),
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context,index) {
                            return Divider(height: 10,);
                          },
                          itemCount: 1,
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/bike.webp')
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(),
          ],
        ),
      ),
*/