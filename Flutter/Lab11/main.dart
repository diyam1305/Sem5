import 'package:flutter/material.dart';
import 'package:lab11/p1.dart';
import 'package:lab11/p2.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: p2());
  }
}
