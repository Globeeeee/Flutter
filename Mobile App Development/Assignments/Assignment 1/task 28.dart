import 'dart:io';

void main() {
  print('Enter any Number : ');
  int a = int.parse(stdin.readLineSync()!);
  int ex = 3;
  int r = 1;
  for (int i = 0; i < ex; i++) {
    r = r * a;
  }
  print('Your value is $r');
}
