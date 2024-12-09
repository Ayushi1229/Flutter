import 'dart:io';
void main(){
  int evensum=0;
  int oddsum =0;
  while(true) {
    print("Enter the number");
    int n= int.parse(stdin.readLineSync()!);
    if(n==0){
      break;
    }
    if(n>0 && n%2==0){
      evensum = evensum + n;
    }
    else if(n<0 && n%2!=0) {
      oddsum = oddsum + n;
    }

    print("Even sum: $evensum");
    print("Odd sum: $oddsum");

    int sum =evensum+oddsum;
    print("The sum of even and odd numbers are:"+ sum.toString());
  }
}