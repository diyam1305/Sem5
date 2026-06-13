import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class p1 extends StatelessWidget {
  p1({Key? key}) : super(key: key);
  Future<List<Map<String, dynamic>>> getData() async {
    final response = await http.get(
      Uri.parse('https://68b7e834b7154050432657b3.mockapi.io/user_detail'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
      return jsonList.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data'));
        }

        final data = snapshot.data!;
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Card(
              child: ListTile(
                title: Text('${item['name'] ?? ''}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${item['email'] ?? ''}'),
                    Text('${item['city'] ?? ''}'),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
