import 'dart:io';

void main() {
  bool isRunning = true;

  while (isRunning) {
    print("Enter first number:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Enter operator (+, -, *, /):");
    String operator = stdin.readLineSync()!;

    print("Enter second number:");
    double num2 = double.parse(stdin.readLineSync()!);

    double result = 0;

    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print("Error: Division by zero!");
          continue; // Restart the loop
        }
        break;
      default:
        print("Invalid operator!");
        continue; // Restart the loop
    }

    print("Result: $result");

    print("Do you want to perform another calculation? (yes/no)");
    String answer = stdin.readLineSync()!.toLowerCase();
    if (answer != "yes") {
      isRunning = false;
    }
  }
}
