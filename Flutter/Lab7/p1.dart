import 'package:flutter/material.dart';

class Image_Asset extends StatefulWidget {
  const Image_Asset({super.key});

  @override
  State<Image_Asset> createState() => _Image_AssetState();
}

class _Image_AssetState extends State<Image_Asset>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(
            "asset/lab-7/flutter_image.png",
          ),
          ]
        ),
      ),
    ),
    );
  }
}
