import 'dart:io';

void main() {
  print('Enter length:');
  double length = double.parse(stdin.readLineSync()!);

  print('Enter width:');
  double width = double.parse(stdin.readLineSync()!);

  double area = calculateArea(length: length, width: width);
  print('Area of the rectangle: $area');
}

double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}
