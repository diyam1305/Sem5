import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-14 Program-1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: PageView(
        children: [
          page("Page 1", Colors.red),
          page("Page 2", Colors.green),
          page("Page 3", Colors.blue),
          page("Page 4", Colors.orange),
          page("Page 5", Colors.purple),
        ],
      ),
    );
  }

  Widget page(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
