import "package:flutter/material.dart";

class p2 extends StatelessWidget {
  const p2({Key? key}) : super(key: key);
  Widget quoteGenerator(String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 222, 221, 221),
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-9 Program-2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
          quoteGenerator("abcd", "xyz"),
        ],
      ),
    );
  }
}
