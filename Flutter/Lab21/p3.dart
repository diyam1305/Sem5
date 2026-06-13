import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'prodcutModel.dart';

class p3 extends StatefulWidget {
  const p3({super.key});

  @override
  State<p3> createState() => _p3State();
}

class _p3State extends State<p3> {
  Future<List<ProductModel>> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final List<dynamic> data = jsonDecode(response);
    return data.map((item) => ProductModel.fromJson(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products from JSON")),
      body: FutureBuilder<List<ProductModel>>(
        future: loadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No data found"));
          } else {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: CircleAvatar(child: Text(product.id.toString())),
                  title: Text(product.title),
                  subtitle: Text("Price: ${product.price}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
