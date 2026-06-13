import 'package:flutter/material.dart';
import 'package:lab13/p1.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: p1());
  }
}
