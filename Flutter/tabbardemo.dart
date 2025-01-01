import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_4thsem/home.dart';
import 'package:yashraj_4thsem/page1.dart';

class TabViewDemo extends StatelessWidget {
  const TabViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Page1",
              ),
            ]),
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure logout ?"),
                          content: Text("Content"),
                          actions: [
                            ElevatedButton(onPressed: (

                                ) {}, child: Text("OK")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("CANCEL"))
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.logout_rounded)),
            ],
          ),
          body: TabBarView(children: [Home(), Page1()]),
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                    child: Image.network(
                        "https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg")),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home_filled),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
