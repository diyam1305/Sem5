import 'package:flutter/material.dart';
import 'package:lab8/p1.dart';
import 'package:lab8/p2.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: p2());
  }
}
