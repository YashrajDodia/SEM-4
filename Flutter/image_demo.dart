import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/Images/img.png", fit: BoxFit.cover),
          Text("First Image demo", style: TextStyle(fontSize: 100,color: Colors.black)),
          Positioned(
              left: 800,
              top: 100,
              child: Text("First Image", style: TextStyle(color: Colors.yellow, fontSize: 80),)
          )
        ],
      ),
    );
  }
}
