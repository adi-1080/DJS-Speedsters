import 'package:djs_speedsters/home/BikeCard.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Features.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Maps.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Ride.dart';
import 'package:flutter/material.dart';

class BikeDetailView1 extends StatefulWidget {
  const BikeDetailView1({super.key});

  @override
  State<BikeDetailView1> createState() => _BikeDetailView1State();
}

class _BikeDetailView1State extends State<BikeDetailView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20,),
              BikeCard(color: Colors.yellow,distance_covered: 47, charging_since: 30, time_hr: 3, time_min: 15, battery: 90, charging_status: true, charging_level: 69),
              SizedBox(height: 20,),
              Maps(),
              Ride(),
              Features(),
            ],
          ),
        ),
      ),
    );
  }
}





