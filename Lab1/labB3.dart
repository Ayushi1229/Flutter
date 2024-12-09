import "dart:io";
bool isPrime(int number) {
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return number > 1;
}
List<int> findPrimesInRange(int start, int end) {
  List<int> primes = [];

  for (int number = start; number <= end; number++) {
    if (number > 1 && isPrime(number)) {
      primes.add(number);
    }
  }

  return primes;
}


void main() {
  print('Prime numbers between 10 and 20: ${findPrimesInRange(10, 20)}');
  print('Prime numbers between 1 and 10: ${findPrimesInRange(1, 10)}');
}