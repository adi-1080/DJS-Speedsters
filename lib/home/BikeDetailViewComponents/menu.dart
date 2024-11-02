import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMenuBar extends StatefulWidget {
  const MyMenuBar({super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> {
  @override

  String initialValue = 'My Phantom 2.0';
  final List bike_list = [
    'My Phantom',
    'My Phantom 2.0',
    'Commercial Bike',
    'Another Bike 1',
  ];
  final sync_time = 1;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
                elevation: 0, underline: Text('i'),
                isDense: false,
                enableFeedback: false,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                value: initialValue,
                icon: Icon(Icons.arrow_drop_down),
                items: bike_list.map((itemValue){
                  return DropdownMenuItem(
                    value: itemValue,
                    child: Text(itemValue),
                  );
                }).toList(),
                onChanged: (newValue){
                  setState(() {
                    initialValue = newValue!.toString();
                  });
                }
            ),
            Text('Last synced $sync_time min ago'),
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications),),
      ],
    );
  }
}
