import 'package:flutter/material.dart';
import 'package:lab21/prodcutModel.dart';
import 'dart:convert';

class p2 extends StatelessWidget {
  p2({Key? key}) : super(key: key);

  final String jsonString = '''[{
    "id": 1,
    "title": "Product 1",
    "price": 100,
    "category": "Electronics"
}]''';

  List<ProductModel> get products {
    List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => ProductModel.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab-21 Program-2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder:
              (context, index) => ListTile(
                title: Text(products[index].title),
                subtitle: Text("Price: \$${products[index].price}"),
                trailing: Text(products[index].category),
                leading: CircleAvatar(
                  child: Text(products[index].id.toString()),
                ),
              ),
        ),
      ),
    );
  }
}
