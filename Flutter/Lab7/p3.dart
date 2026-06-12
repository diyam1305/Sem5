import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Birthday_card1 extends StatelessWidget {
  const Birthday_card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday-wishes"),
      ),
      body: Stack(
        alignment: Alignment.center,
        fit:  StackFit.expand,
        children: [
          Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/happy-birthday-template-online-greeting-cards-design-51734f7b7d38c7cf484596ffbf0e9c6d_screen.jpg?ts=1707990153"),
          Container(// Semi-transparent background for text
            padding: EdgeInsets.only(top: 350, left: 650),
            child: const Text(
              'Wishes!',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
