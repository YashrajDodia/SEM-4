import 'package:first_project/CRUDtest/Crud_Users.dart';
import 'dart:io';


void main() {
  Users u1 = Users();
  int n = 0;
  while(n!=-1){
    print("Enter 1 to add new user 2 for showing users 3 for updating any user 4 to delete any user and -1 to exit : ");
    n = int.parse(stdin.readLineSync()!);
    switch(n){
      case 1:
        stdout.write("Enter name : ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter age : ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("Enter email : ");
        String email = stdin.readLineSync()!;
        u1.addUsers(Name: name, Age: age, Email: email);
        break;
      case 2:
        u1.getUsers();
        break;
      case 3:
        stdout.write("Enter updated name : ");
        String uname = stdin.readLineSync()!;
        stdout.write("Enter updated age : ");
        int uage = int.parse(stdin.readLineSync()!);
        stdout.write("Enter updated email : ");
        String uemail = stdin.readLineSync()!;
        stdout.write("Enter id where to update : ");
        int id = int.parse(stdin.readLineSync()!);
        u1.updateUsers(Name: uname, Age: uage, Email: uemail, id: id);
        break;
      case 4:
        stdout.write("Enter id where to delete user : ");
        int id = int.parse(stdin.readLineSync()!);
        u1.deleteUser(id: id);
        break;
    }
  }
}
