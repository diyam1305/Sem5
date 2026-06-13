import 'package:flutter/material.dart';

class p2 extends StatelessWidget {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
  ];
  p2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-11 Program-2"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle_outlined),
            title: Text(numbers[index].toString()),
            subtitle: Text("Darshan University"),
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
