import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({Key? key}) : super(key: key);

  @override
  _P2State createState() => _P2State();
}

class _P2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-10 Program-2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.album, size: 70),
              title: Text("Name"),
              subtitle: Text("Author"),
            ),
            SizedBox(height: 30),
            LinearProgressIndicator(value: 0.7),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.skip_previous, size: 40),
                Icon(Icons.play_arrow, size: 40),
                Icon(Icons.skip_next, size: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
