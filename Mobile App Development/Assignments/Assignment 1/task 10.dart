import 'dart:io';

void main() {
  print('Enter a number as a string: ');
  String userInput = stdin.readLineSync()!;
  int number = int.parse(userInput);
  print('Converted integer: $number');
}
