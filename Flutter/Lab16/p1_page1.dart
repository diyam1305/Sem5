import 'package:flutter/material.dart';
import 'package:lab16/p1pg2.dart';

class P1pg1 extends StatelessWidget {
  const P1pg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-16 Program-1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page-1"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => P1pg2()),
                );
              },
              child: Text("Click here"),
            ),
          ],
        ),
      ),
    );
  }
}
