import "dart:io";
void main(){
  int a = int.parse(stdin.readLineSync()!);
  print(a);
  int b = int.parse(stdin.readLineSync()!);
  print(b);
  String o = stdin.readLineSync()!;
  print(o);
  switch (o){
    case '+' :
      int sum = a+b;
      print("Addition of a and b is="+ sum.toString());
      break;
    case '-' :
      int sub = a-b;
      print("Subtraction of a and b is="+ sub.toString());
      break;
    case '*' :
      int mul = a*b;
      print("Multiplication of a and b is="+ mul.toString());
      break;
    case '/' :
      double div = a/b;
      print("Division of a and b is="+ div.toString());
      break;
  }
}