import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({Key? key}) : super(key: key);

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    Widget shoppingItemGenerator(String imgUrl, String title, String subtitle) {
      return Container(
        height: 250,
        width: 500,
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(imgUrl),
              ),
              Container(
                height: 240,
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(subtitle, style: TextStyle(fontSize: 15)),
                      ),
                      SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text("-")),
                          Text("1", style: TextStyle(fontSize: 20)),
                          ElevatedButton(onPressed: () {}, child: Text("+")),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-8 Program-2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              shoppingItemGenerator(
                "https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732&width=1445",
                "iPhone 16",
                "Latest Flagship Smartphone",
              ),
              shoppingItemGenerator(
                "https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732&width=1445",
                "iPhone 16",
                "Latest Flagship Smartphone",
              ),
              shoppingItemGenerator(
                "https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732&width=1445",
                "iPhone 16",
                "Latest Flagship Smartphone",
              ),
              shoppingItemGenerator(
                "https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732&width=1445",
                "iPhone 16",
                "Latest Flagship Smartphone",
              ),
              shoppingItemGenerator(
                "data:image/jpeg;base64,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",
                "School Bag",
                "High Quality Waterproof Bag",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
