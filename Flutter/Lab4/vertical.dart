import 'package:flutter/material.dart';

class vertical extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("vertical space"),),
        body: Row(
          children: [
            Expanded(
                child: Container(
                  color: Colors.pinkAccent,
                )
            ),
            Expanded(
                child: Container(
                  color: Colors.white,
                )
            ),
            Expanded(
                child: Container(
                  color: Colors.green,
                )
            )
          ],
        ),
      ),
    );
  }
}