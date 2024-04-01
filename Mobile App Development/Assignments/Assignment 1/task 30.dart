import 'dart:io';

int maxNumber(int a, int b, int c) {
  int max = a;
  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }
  return max;
}

void main() {
  print('Enter three numbers:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);
  int largest = maxNumber(num1, num2, num3);
  print('The largest number among $num1, $num2, and $num3 is: $largest');
}
