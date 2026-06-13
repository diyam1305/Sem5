import 'package:flutter/material.dart';
import 'package:lab21/p1.dart';
import 'package:lab21/p2.dart';
import 'package:lab21/p3.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: p3());
  }
}
