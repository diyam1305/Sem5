import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Lab-15 Program-1"),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: "Chats", icon: Icon(Icons.chat)),
              Tab(text: "Updates", icon: Icon(Icons.photo_album_outlined)),
              Tab(text: "Call", icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Chats")),
            Center(child: Text("Updates")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
