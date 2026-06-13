import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  const p1({Key? key}) : super(key: key);
  Widget emojiButton(Widget icon) {
    return CircleAvatar(radius: 30, child: icon);
  }

  Widget ratingButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(shape: CircleBorder(), elevation: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-9 Program-1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                '''How would you describe your mood after
    using our product for the first time ?''',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  emojiButton(
                    Icon(
                      Icons.sentiment_satisfied,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                  emojiButton(
                    Icon(
                      Icons.sentiment_neutral,
                      size: 50,
                      color: Colors.amber,
                    ),
                  ),
                  emojiButton(
                    Icon(
                      Icons.sentiment_dissatisfied,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "How would you rate this product ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ratingButton("1"),
                  ratingButton("2"),
                  ratingButton("3"),
                  ratingButton("4"),
                  ratingButton("5"),
                ],
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Your Feedback",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Enter your feedback here...",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 228, 227, 227),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
