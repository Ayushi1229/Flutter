import "dart:io";
void main(){
  int m1  = int.parse(stdin.readLineSync()!);
  int m2  = int.parse(stdin.readLineSync()!);
  int m3 = int.parse(stdin.readLineSync()!);
  int m4  = int.parse(stdin.readLineSync()!);
  int m5  = int.parse(stdin.readLineSync()!);
  print(((m1+m2+m3+m4+m5)/500)*100);
}