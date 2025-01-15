import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewsDemo extends StatefulWidget {
  const ViewsDemo({super.key});

  @override
  State<ViewsDemo> createState() => _ViewsDemoState();
}

class _ViewsDemoState extends State<ViewsDemo> {

  bool isGrid = false;
  @override
  Widget build(BuildContext context) {

    List<String> cities = [
      "Ahemdabad",
      "Rajkot",
      "Surat",
      "Vadodra",
      "Jamnagar",
      "Gandhinagar",
      "Surendranagar",
      "Porbandar"
    ];

    List<String> imgs = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tmioEWGNfWiWli-DXJe-IqKYKc2sQsAxk-BXOhFS1CvDYGHJVjc7gDc-ZGxBwBVWm8U&usqp=CAU",
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("List and grid view demo"),
          actions: [
            IconButton(onPressed: (){
              setState(() {
                isGrid = !isGrid;
              });
            }, icon: Icon(
              // Icons.list
              isGrid ? Icons.list : Icons.grid_3x3
            ))
          ],
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: isGrid ? GridView.builder(
            itemCount: imgs.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Column(
                  children: [
                    GridTile(child: Image.network(imgs[index])),
                    GridTile(child: Text(cities[index])),
                  ],
                ),
              );
            },
          ) :  ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(imgs[index]),
                title: Text(cities[index] , style: TextStyle(color: Colors.red),),
              );
            },),
        )
        );
  }
}
