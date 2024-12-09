import 'dart:io';
void main() {
  int sum = 0;
  while (true) {
    print("Enter the numbers:");
    int n = int.parse(stdin.readLineSync()!);
    if (n % 3 == 0 || n % 5 == 0) {
      sum = sum + n;
    }

    print("The sum is " + sum.toString());
  }
}