import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Features',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                width: 400,
                child: Card(
                  elevation: 5,
                  color: Color.fromARGB(244, 255, 215, 83),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Speedster Labs',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        Text('Try the new Latest Features'),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Explore now',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_up_right)),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 400,
                child: Card(
                  elevation: 5,
                  color: Color.fromARGB(200, 255, 177, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Savings Tracker',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        Text('Track your savings and reduced carbon emissions'),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Spacer(),
                            Text('View now',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            SizedBox(width: 7,),
                            IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_outlined)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}