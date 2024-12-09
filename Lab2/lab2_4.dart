import 'dart:io';
void main(){
  print("Enter the m1");
  int m1 = int.parse(stdin.readLineSync()!);
  print("Enter the m2");
  int m2 = int.parse(stdin.readLineSync()!);
  print("Enter the m3");
  int m3 = int.parse(stdin.readLineSync()!);
  print("Enter the m4");
  int m4 = int.parse(stdin.readLineSync()!);
  print("Enter the m5");
  int m5 = int.parse(stdin.readLineSync()!);
  double per = (m1+m2+m3+m4+m5)/5;
  if(per<35)
  {
    print("Fail");
  }
  else if(per>35 && per<=45)
  {
    print("Pass Class");
  }
  else if(per>45 && per<=60)
  {
    print("Second Class");
  }
  else if(per>60 && per<=70)
  {
    print("First Class");
  }
  else if(per>70)
  {
    print("Distinction");
  }
}