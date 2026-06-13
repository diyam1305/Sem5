import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  _p1State createState() => _p1State();
}

class _p1State extends State<p1> {
  Widget task(String tasktxt) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tasktxt,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Checkbox(value: true, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-10 Program-1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            task("ABCD"),
            task("ABCD"),
            task("ABCD"),
            task("ABCD"),
            task("ABCD"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child: Text(
                    "Add Task",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
