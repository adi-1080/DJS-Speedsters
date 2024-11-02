import 'package:djs_speedsters/MyBike/my_bike.dart';
import 'package:djs_speedsters/home/BikeCard.dart';
import 'package:djs_speedsters/home/BikeDetailView1.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('DJS Speedsters',style: TextStyle(fontWeight: FontWeight.w500),),
    backgroundColor: Colors.orange,
    ),
    body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: MyMenuBar(),
    ),
    InkWell(
    onTap: (){
      Navigator.push(context, PageTransition(child: BikeDetailView1(), type: PageTransitionType.fade));
    },
    child: Stack(
    children: [
    BikeCard(color: Colors.yellow,distance_covered: 26, charging_since: 79, time_hr: 3, time_min: 41, battery: 45, charging_status: true, charging_level: 77),
    Positioned(
    left: 200,
    top: 87,
    child: Container(
    width: 200,
    height: 200,
    child: Image.asset('assets/images/bike.webp')),
    ),
    ],
    ),
    ),
    InkWell(
    onTap: (){
      Navigator.push(context, PageTransition(child: MyBike(), type: PageTransitionType.fade));
    },
    child: Stack(
    children: [
    BikeCard(color: Colors.orange,distance_covered: 26, charging_since: 79, time_hr: 3, time_min: 41, battery: 61, charging_status: true, charging_level: 57),
    Positioned(
    left: 200,
    top: 87,
    child: Container(
    width: 200,
    height: 200,
    child: Image.asset('assets/images/bike.webp')),
    ),
    ],
    ),
    ),
    ],
    ),
    );
  }
}
