import 'dart:io';

void main() {
  List<double> expenses = [];
  while (true) {
    print('Enter expense amount (or type "done" to finish):');
    String userInput = stdin.readLineSync()!;

    if (userInput.toLowerCase() == 'done') {
      break;
    }

    double expense = double.parse(userInput);
    if (expense != null) {
      expenses.add(expense);
    } else {
      print('Invalid input. Please enter a valid number or "done" to finish.');
    }
  }
  double total = expenses.isEmpty
      ? 0
      : expenses.reduce((value, element) => value + element);
  print('Total expenses: $total');
}
