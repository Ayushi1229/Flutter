import "dart:io";
void main(){
  print("Enter the value of a");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter the value of b");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter the value of c");
  int c = int.parse(stdin.readLineSync()!);
  if(a>b){
    if(b>c){
      print("a is largest");
    }
    else{
      print("c is largest");
    }
  }
  else if(b>a){
    if(a>c){
      print("b is largest");
    }
    else{
      print("c is largest");
    }
  }
}