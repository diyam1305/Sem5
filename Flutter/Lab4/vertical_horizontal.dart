import 'package:flutter/material.dart';

class vertical_horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded( // First row with 3 equal boxes
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.pinkAccent)),
                  Expanded(child: Container(color: Colors.yellowAccent)),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
            Expanded( // Second row with 2 wide and 1 narrow box
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.blue)),
                  Expanded(flex: 1, child: Container(color: Colors.pinkAccent)),
                  Expanded(flex: 1, child: Container(color: Colors.yellowAccent)),
                ],
              ),
            ),
            Expanded( // Third row with 3 different widths
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.yellowAccent)),
                  Expanded(flex: 1, child: Container(color: Colors.blue)),
                  Expanded(flex: 1, child: Container(color: Colors.pinkAccent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
