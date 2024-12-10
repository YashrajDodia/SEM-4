import 'dart:io';



void main() {
  // P1 : print(calIntrest(120067, 10, 1));
  // P2 : print('Greatest number is ${findGreatest(23, 45)}');
  /* P3 :  List ansList = printFibo(n: 5);
  print(ansList) P3 */
  // P4 : stdout.write("Enter a number : ");
  // int n = int.parse(stdin.readLineSync()!);
  // if(check(n)){
  //   print("$n is prime");
  // }else{
  //   print("$n is not prime");
  // P4}
  //P5
  // countOddOrEven(n: 7);

  sortBasedOnHeight(3);
}

//P1
// double calIntrest(int p, int r, int t){
//   return (p*r*t)/100;
// }

//P2
// int findGreatest(int a, int b){
//   if(a>b){
//     return a;
//   }else{
//     return b;
//   }
// }

//P3
// List printFibo({required int n}){
//   List<int> l1 = [];
//   l1.add(0);
//   l1.add(1);
//   for(int i=2; i<=n; i++){
//     l1.add(l1[i-1] + l1[i-2]);
//   }
//   return l1;
// }

//P4
// bool check(int n){
//   for(int i=2; i<=n/2; i++){
//     if(n%i==0){
//       return false;
//     }
//   }
//   return true;
// }

//P5
// void countOddOrEven({required int n}){
//   int ecount = 0;
//   int ocount = 0;
//   for(int i=1; i<=n; i++){
//     if(i%2==0){
//       ecount++;
//     }else{
//       ocount++;
//     }
//   }
//   print("No. of even numbers are : $ecount and no. of odd numbers are $ocount");
// }

//P6

void sortBasedOnHeight(int n) {
  List<int> height = [];
  List<String> names = [];
  for (int i = 1; i <= n; i++) {
    stdout.write("Enter height of student $i : ");
    int h = int.parse(stdin.readLineSync()!);
    height.add(h);
    stdout.write("Enter name of student $i : ");
    String n = stdin.readLineSync()!;
    names.add(n);
  }
  for (int i = 0; i < height.length; i++) {
    for (int j = i + 1; j < height.length; j++) {
      if (height[j] > height[i]) {
        String temp = names[i];
        names[i] = names[j];
        names[j] = temp;
      }
    }
  }
  print(names);
}
