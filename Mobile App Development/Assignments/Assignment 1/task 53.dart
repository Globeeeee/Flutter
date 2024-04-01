int returnNonNullValue(int? value) {
  return value ?? 0;
}

void main() {
  int? nullableValue = null;
  int result = returnNonNullValue(nullableValue);
  print(result); // Output: 0
}
