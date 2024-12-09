import 'dart:io';
void main(){
int i=1;
int count=0;
print("Enter n:");
int n = int.parse(stdin.readLineSync()!);
while(i<=n){
if(n%i==0){
count++;
}
i=i+1;
}
if(count==2){
print("Prime");
}
else{
print("Non Prime");
}
}