import 'package:flutter/material.dart';
import 'user.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<User> users = [];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 10),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    onPressed: () {
                        setState(() {
                          users.add(User(
                            name: name.text.trim(),
                            password: password.text.trim(),
                          ));
                          name.clear();
                          password.clear();
                        });

                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (selectedIndex != -1 ) {
                        setState(() {
                          users[selectedIndex] = User(
                            name: name.text.trim(),
                            password: password.text.trim(),
                          );
                          name.clear();
                          password.clear();
                          selectedIndex = -1;
                        });
                      }
                    },
                    child: const Text('Update'),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) => getRow(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              users[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(users[index].password),
          ],
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    name.text = users[index].name;
                    password.text = users[index].password;
                    selectedIndex = index;
                  });
                },
                icon: Icon(Icons.edit),
              ),
              SizedBox(width: 4),
              IconButton(
                onPressed: () {
                  setState(() {
                    users.removeAt(index);
                    if (selectedIndex == index) {
                      selectedIndex = -1;
                      name.clear();
                      password.clear();
                    }
                  });
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
