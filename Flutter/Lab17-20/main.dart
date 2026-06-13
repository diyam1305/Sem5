import 'package:flutter/material.dart';
import 'package:lab17tolab20/login.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}
