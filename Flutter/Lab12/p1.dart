import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  List<String> names = ["Alice", "Bob", "Charlie", "David", "Eve"];
  p1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-12 Program-1"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        children:
            names.map((name) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(name[0])),
                  title: Text(name),
                  trailing: Icon(Icons.call),
                ),
              );
            }).toList(),
      ),
    );
  }
}
