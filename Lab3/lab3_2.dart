import 'dart:io';
void main(){
int i=1;
int factorial=1;
print("Enter number for factorial:");
int n = int.parse(stdin.readLineSync()!);
while(i<=n){
factorial=factorial*i;
i++;
}
print("Factorial is: "+ factorial.toString());
}