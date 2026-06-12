import 'package:flutter/material.dart';

class Image_Asset2 extends StatefulWidget {
  const Image_Asset2({super.key});

  @override
  State<Image_Asset2> createState() => _Image_Asset2State();
}

class _Image_Asset2State extends State<Image_Asset2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child:Stack(
          alignment: Alignment.center,
                children: [
                  Image.asset(
                    "asset/lab-7/flutter_image.png",
                  ),
                  Container(// Semi-transparent background for text
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'Flutter!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
