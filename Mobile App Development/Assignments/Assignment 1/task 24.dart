import 'dart:io';

void greet(String name) {
  print("Hello, $name");
}

void main() {
  print('Enter your name:');
  String n = stdin.readLineSync()!;
  greet(n);
}
