import "dart:io";
void main(){
  print("Enter the value of a");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter the value of b");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter the value of c");
  int c = int.parse(stdin.readLineSync()!);
  int max=((a>b)?((a>c)?a:c):((b>c)?b:c));
  print("The maximum value is " + max.toString());
}