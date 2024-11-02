import 'package:djs_speedsters/home/BikeCard.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Features.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Maps.dart';
import 'package:djs_speedsters/home/BikeDetailViewComponents/Ride.dart';
import 'package:flutter/material.dart';

class BikeDetailView2 extends StatefulWidget {
  const BikeDetailView2({super.key});

  @override
  State<BikeDetailView2> createState() => _BikeDetailViewState2();
}

class _BikeDetailViewState2 extends State<BikeDetailView2> {
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
              BikeCard(color: Colors.pinkAccent,distance_covered: 74, charging_since: 89, time_hr: 10, time_min: 17, battery: 11, charging_status: false, charging_level: 45),
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





