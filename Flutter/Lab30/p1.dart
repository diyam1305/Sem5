import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  late Future<List> _futureFoods;
  @override
  void initState() {
    super.initState();
    _futureFoods = fetchFoods();
  }

  Future<List> fetchFoods() async {
    const String apiUrl = "https://68ca25d4430c4476c3485c09.mockapi.io/demo";
    final res = await http.get(Uri.parse(apiUrl));
    return jsonDecode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab-30 Program-1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List>(
        future: _futureFoods,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final foods = snapshot.data!;
          return ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              final f = foods[index];
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(f['imageUrl'] ?? ''),
                  ),
                  title: Text(f['name'] ?? ''),
                  subtitle: Text(f['description'] ?? ''),
                  trailing: Text("${f['price'] ?? ''}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
