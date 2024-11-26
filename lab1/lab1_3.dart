import "dart:io";
void main(){
  double f = double.parse(stdin.readLineSync()!);
  print(f);

  print((f-32)*(5/9));
}