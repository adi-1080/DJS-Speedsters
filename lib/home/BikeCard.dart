import 'package:flutter/material.dart';

class BikeCard extends StatelessWidget {
  const BikeCard({
    super.key,
    required this.distance_covered,
    required this.charging_since,
    required this.time_hr,
    required this.time_min,
    required this.battery,
    required this.charging_status,
    required this.charging_level,
    required this.color,
  });

  final int distance_covered;
  final int charging_since;
  final int time_hr;
  final int time_min;
  final int battery;
  final bool charging_status;
  final int charging_level;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 400,
          height: 200,
          child: Card(
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: const <TextSpan>[
                                TextSpan(text: '31 ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black,),),
                                TextSpan(text: 'km', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black,),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('$distance_covered km'),
                                    Text('$charging_since mins'),
                                  ],
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('$time_hr hr $time_min min'),
                                    Text('$battery%'),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          if(charging_status)
                            Text('Charging Now',style: TextStyle(fontWeight: FontWeight.bold),)
                          else
                            Text('Not Charging',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.battery_charging_full_sharp)),
                    SizedBox(width: 5,),
                    Text('$charging_level%'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
        Positioned(
          left: 200,
          top: 87,
          child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/bike.webp')),
        ),
      ],
    );
  }
}

/*
Stack(
        children: [
          BikeCard(distance_covered: distance_covered, charging_since: charging_since, time_hr: time_hr, time_min: time_min, battery: battery, charging_status: charging_status, charging_level: charging_level),
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
 */