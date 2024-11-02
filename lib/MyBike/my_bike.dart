import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyBike extends StatefulWidget {
  const MyBike({super.key});

  @override
  State<MyBike> createState() => _MyBikeState();
}

class _MyBikeState extends State<MyBike> {
  final no_of_bikes = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 155,),
                Text('My Bike',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29),),
                SizedBox(width: 100,),
                Icon(CupertinoIcons.xmark),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 145,),
                Text('Last synced 1min ago',style: TextStyle(fontSize: 12,color: Colors.grey),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_left)),
                Container(
                    width: 220,
                    height: 220,
                    child: Image.asset('assets/images/bike.webp')
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right)),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 7,
                    ),
                  );
                }, itemCount: no_of_bikes,),
            ),
            Expanded(
              child: SlidingUpPanel(
                minHeight: 100,
                maxHeight: MediaQuery.of(context).size.height * 0.8,
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
                        Text('Speedster_1',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text('KA02KFG4269'),
                              VerticalDivider(),
                              Text('ODO-4671.57 km'),
                            ],
                          ),
                        ),
                        Divider(),
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
                                  Row(
                                    children: [
                                      Text('31 km'),
                                      RotatedBox(
                                          quarterTurns: 45,
                                          child: Icon(Icons.battery_5_bar_sharp)
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
