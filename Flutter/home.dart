import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_4thsem/page1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page",style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1(),));
            }, child: Text("Go to Page1"))
          ],
        ),
      ),
    );
  }
}
