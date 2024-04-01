enum Gender {
  male,
  female,
  others,
}

void main() {
  print('All Gender Values:');
  for (var gender in Gender.values) {
    print(gender.toString().split('.').last);
  }
}
