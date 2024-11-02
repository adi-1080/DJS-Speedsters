import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Use maps to",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), SizedBox(height: 10,),
            Container(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.power_outlined),
                                Text('Find a charger'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.location_on_sharp),
                                Text('Locate Scooter'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.search),
                                Text('Search a place'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.add_location_alt),
                                Text('Find a charger'),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}