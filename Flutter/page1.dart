import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_4thsem/home.dart';
import 'package:yashraj_4thsem/tabbardemo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Page",style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
            }, child: Text("Back to home page"))
          ],
        ),
      ),
    );
  }
}
