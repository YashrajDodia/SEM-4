import 'dart:io';

void main(){
  stdout.write("Enter a number : ");
  int n1 = int.parse(stdin.readLineSync()!);

  if(n1<=0){
    print('Given number is not ugly');
  }
  int i = 2;
  while(i<n1/2){
    if(n1%i==0 && (i!=2 || i!=3 || i!=5)){
  print(true);
      break;
    }
    i++;
  }

}