import 'dart:math';

double calculateArea(double radius) {
  return pi * radius * radius;
}

void main() {
  double r = 5.0;
  double a = calculateArea(r);
  print('Area of the circle with radius $r is: $a');
}
