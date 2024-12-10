import 'dart:io';

void main(){
  //Addition and division of two numbers
  // print("Enter first number");
  // double a = double.parse(stdin.readLineSync()!);
  // print("Enter second number");
  // double b = double.parse(stdin.readLineSync()!);
  // print("Addition of two numbers is : ${a+b}");
  // print("Divison of two numbers is : ${a/b}");
  // print("Remainder of two numbers is : ${a%b}");
  //
  // //Read five numbers from user and print it using loop
  List<int> l1 = [];
  // for(int i=0; i<5; i++){
  //   l1.add(int.parse(stdin.readLineSync()!));
  // }

  // print(l1);

  //Using loop
  // for(int i=0; i<5; i++){
  //   print(l1[i]);
  // }
  //

  print("Enter -1 to exit");
  int g;
  while(true){
    g = int.parse(stdin.readLineSync()!);
    if(g==-1) {
      break;
    }
    l1.add(g);
  }
  print(l1);
}