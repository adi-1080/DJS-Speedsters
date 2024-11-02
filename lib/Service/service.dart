import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Need Help?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Container(
                height: 130,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Get Support',style: TextStyle(fontSize: 14),),
                                SizedBox(height: 5,),
                                Text('Have any queries?',style: TextStyle(fontSize: 12),),
                              ],
                            ),
                           SizedBox(width: 140,),
                            Column(
                              children: [
                                Icon(Icons.person_pin_outlined),
                                Text('Contact',style: TextStyle(color: Colors.blue),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 130,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20,),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Roadside Assistance',style: TextStyle(fontSize: 14),),
                                SizedBox(height: 5,),
                                Text('For on road assistance',style: TextStyle(fontSize: 12),),
                                Text('24x7',style: TextStyle(fontSize: 12),),
                              ],
                            ),
                           SizedBox(width: 100,),
                            Column(
                              children: [
                                Icon(CupertinoIcons.phone),
                                Text('Call now',style: TextStyle(color: Colors.blue),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 80,),

              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Quick Help'),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Vehicle Manual'),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded),),
                ],
              ),
              SizedBox(height: 10,),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
