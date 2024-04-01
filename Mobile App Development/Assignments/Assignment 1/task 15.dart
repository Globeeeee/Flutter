import 'dart:io';

void main() {
  print("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("$number is a positive number.");
  } else if (number < 0) {
    print("$number is a negative number.");
  } else {
    print("$number is zero.");
  }
}
