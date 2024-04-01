void main() {
  double totalBillAmount = 100.0;
  int numberOfPeople = 4;
  
  double splitAmount = totalBillAmount / numberOfPeople;
  
  print('Total Bill Amount: \$${totalBillAmount.toStringAsFixed(2)}');
  print('Number of People: $numberOfPeople');
  print('Split Amount per Person: \$${splitAmount.toStringAsFixed(2)}');
}
