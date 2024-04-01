import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);
  bool result = isEven(num);
  print('$num is even: $result');
}
