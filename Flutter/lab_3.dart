import 'dart:io';
void main(){
  //P1
  // stdout.write("Enter first number : ");
  // int n1 = int.parse(stdin.readLineSync()!);
  // stdout.write("Enter second number : ");
  // int n2 = int.parse(stdin.readLineSync()!);
  // for(int i = n1 ; i<=n2 ; i++){
  //   if(i%2==0 && i%3!=0){
  //     print('$i ');
  //   }
  // }

  //P2
  // stdout.write("Enter a number : ");
  // int n1 = int.parse(stdin.readLineSync()!);
  // int fact = 1;
  // for(int i = 1 ; i<=n1 ; i++){
  //   fact*=i;
  // }
  // print(fact);

  //P3
  // stdout.write("Enter a number : ");
  // int n1 = int.parse(stdin.readLineSync()!);
  // bool isPrime = true;
  // for(int i=2; i<=n1/2; i++){
  //   if(n1%i==0) isPrime = false;
  // }
  // if(isPrime){
  //   print("$n1 is prime number");
  // }else{
  //   print("$n1 is not prime number");
  // }

  //P4
  // stdout.write("Enter a number : ");
  // int n1 = int.parse(stdin.readLineSync()!);
  // int ans = 0;
  // while(n1!=0){
  //   ans = ans*10 + n1%10;
  //   n1~/=10;
  // }
  // print("$ans is reverse of given number");

  //P5
  // stdout.write("Enter a string : ");
  // String str = stdin.readLineSync()!;
  // print(str.split('').reversed.join());

  //P6
  // int n = -1;
  // int psum = 0;
  // int nsum = 0;

  // while(n!=0){
  //   stdout.write("Enter a number or 0 to quit: ");
  //   n = int.parse(stdin.readLineSync()!);
  //   if(n>0 && n%2==0) psum+=n;
  //   if(n<0 && n%2!=0) nsum+=n;
  // }
  //
  // print("positive sum is : $psum and negative sum is : $nsum");

  //P7
  Map<int , bool> m1 = {};
  int n = 0;
  while(n!=-1){
    stdout.write("Enter a number or 0 to quit: ");
    n = int.parse(stdin.readLineSync()!);
    if(m1.containsKey(n)){
      m1.update(n, (value) => false);
    }else{
      m1.addAll({n : true});
    }
  }
  print(m1);
}