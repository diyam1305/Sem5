import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
  p1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-11 Program-1"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children:
            numbers.map((number) {
              return ListTile(
                leading: Icon(Icons.supervised_user_circle_outlined),
                title: Text(number.toString()),
                subtitle: Text("Darshan University"),
              );
            }).toList(),
      ),
    );
  }
}
