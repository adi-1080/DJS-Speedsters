import 'package:flutter/material.dart';

class Ride extends StatelessWidget {
  const Ride({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Your recent ride',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right)),
            ],
          ),
          Container(
            child: SafeArea(
              child: Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 240),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                    ),
                                    child: Text('50 minutes ago')),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Efficiency'),
                                            Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('Wh/km'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Duration'),
                                            Text('40',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('min'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Top Speed'),
                                            Text('69',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('km/h'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 240),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                    ),
                                    child: Text('50 minutes ago')),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Efficiency'),
                                            Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('Wh/km'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Duration'),
                                            Text('40',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('min'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Top Speed'),
                                            Text('69',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('km/h'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 240),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(7)),
                                    ),
                                    child: Text('50 minutes ago')),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Efficiency'),
                                            Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('Wh/km'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Duration'),
                                            Text('40',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('min'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Text('Top Speed'),
                                            Text('69',style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text('km/h'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}