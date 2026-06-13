import 'package:flutter/material.dart';

class P1pg2 extends StatelessWidget {
  const P1pg2({Key? key}) : super(key: key);

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
            Text("Page-2"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Click here"),
            ),
          ],
        ),
      ),
    );
  }
}
