import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Card(
              elevation: 4,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('SPEEDSTERS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        Spacer(),
                        Text('EDIT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.mode_edit_outline),),
                      ],
                    ),
                    Text('+91-7021153275',style: TextStyle(fontSize: 12,color: Colors.grey),),
                    Text('adityagupta5277@gmail.com',style: TextStyle(fontSize: 12,color: Colors.grey),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Vehicle no -',style: TextStyle(color: Colors.grey),),
                              Text('KA02KFG4269',style: TextStyle(color: Colors.white),),
                            ],)
                          ],
                        ),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Odo -',style: TextStyle(color: Colors.grey),),
                              Text('4671.57 km',style: TextStyle(color: Colors.white),),
                            ],)
                          ],
                        ),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Model -',style: TextStyle(color: Colors.grey),),
                              Text('Gen1.5_450',style: TextStyle(color: Colors.white),),
                            ],)
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 110,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Icon(Icons.bluetooth),
                              Text('Bluetooth'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 150,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Icon(Icons.document_scanner),
                              Text('Documents'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 150,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Icon(Icons.subscriptions),
                              Text('Subscriptions'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(CupertinoIcons.profile_circled),
                SizedBox(width: 10,),
                Text('Creat Guest Profile'),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded),),
              ],
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.settings),
                Text('Settings'),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded),),
              ],
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 10,),
                Text('Logout',style: TextStyle(),)
              ],
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
