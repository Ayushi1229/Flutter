import "dart:io";
void main(){
  int a = int.parse(stdin.readLineSync()!);
  print(a);
  if(a>=0){
    print("Number is positive");
  }
  else{
    print("Number is negative");
  }
}