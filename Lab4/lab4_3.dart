import 'dart:io';
void def([int? first=0,int? second=1,int? next,double? i, double? n=10]){
  print("Fibonnaci Series is:");
  for(i=3;i!<n!;i++){
    next = first! + second!;
    print(next);
    first = second;
    second = next;
  }
}

void main(){
  def(0,1);
}