import 'dart:io';
void main(){
  print("Enter num1:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter num2:");
  int b = int.parse(stdin.readLineSync()!);

  for(int i=a;i<=b;i++){
    if(i%2==0 && i%3!=0){
      print("The numbers are :" +i.toString());
    }
  }
}