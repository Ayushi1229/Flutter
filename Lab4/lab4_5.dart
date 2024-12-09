import 'dart:io';
void check({int? n,double? i=1, int? even =0,int? odd=0}){
  print("Enter number: n$n");
  print("Even numbers are:");
  while(i!<=n!){
    if(i%2==0){
      print(i);
      even=even!+1;
    }
    i=i+1;
  }
  print("Odd numbers are:");
  i=1;
  while(i!<=n){
    if(i%2==1){
      print(i);
      odd =odd!+1;
    }
    i=i+1;
  }
  print("Total even numbers are : even$even");
  print("Total odd numbers are : odd$odd");
}

void main(){
  check(n : 20);
}