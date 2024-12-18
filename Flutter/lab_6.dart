import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First flutter project",style: TextStyle(color : Colors.black, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
      ),
    );
  }
}