import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  while (n != 0) {
    print(n % 10);
    n = n ~/ 10;
  }
}
