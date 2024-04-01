import 'dart:io';

String reverseString(String a) {
  String rt = '';
  for (int i = a.length - 1; i >= 0; i--) {
    rt += a[i];
  }
  return rt;
}

void main() {
  print('Enter any String:');
  String a = stdin.readLineSync()!;
  String re = reverseString(a);
  print("Your String in reverse is $re");
}
