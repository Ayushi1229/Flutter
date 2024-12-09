import 'dart:io';
void main(){
  print("Enter the n numbers:");
  int n =  int.parse(stdin.readLineSync()!);
  List<int> nums=[];
  for(int i=1;i<=n;i++){
      nums.add(int.parse(stdin.readLineSync()!));
      print(nums);
  }
  nums.sort();
  for(int i=1;i<=n;i++){
    print(nums);
  }
}