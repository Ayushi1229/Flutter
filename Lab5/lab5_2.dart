import 'dart:io';
void main(){
  print("Enter the n1 numbers:");
  int a =  int.parse(stdin.readLineSync()!);
  List<int> n1=[];
  for(int i=1;i<=a;i++){
    n1.add(int.parse(stdin.readLineSync()!));
    print(n1);
  }
  print("Enter the n2 numbers:");
  int b =  int.parse(stdin.readLineSync()!);
  List<int> n2=[];
  for(int i=1;i<=b;i++){
    n2.add(int.parse(stdin.readLineSync()!));
    print(n2);
  }
  print("Common Numbers for both the list are:");
  List<int> n3=[];
  for(int i=0;i<n1.length;i++){
    for(int j=0;j<n2.length;j++) {
      if (n1[i] == n2[j]) {
        n3.add(n1[i]);
        print(n3);
      }
    }
  }

}