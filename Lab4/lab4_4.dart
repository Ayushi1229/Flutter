import 'dart:io';
void check({int? n,double? i=1, int? count =0}) {
  print("Enter n: n$n");
  while (i! <= n!) {
    if (n! % i! == 0) {
      count = count! + 1;
    }
    i = i! + 1;
  }
  if (count == 2) {
    print("1 as it is prime");
  }
  else {
    print("0 as it is non prime");
  }
}

void main(){
  check(n : 5);
}