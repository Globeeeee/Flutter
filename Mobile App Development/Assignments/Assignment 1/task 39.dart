void main() {
  Map<String, dynamic> person = {
    'name': 'Muhammad Qasim',
    'address': 'Malik park',
    'age': 21,
    'country': 'PAK'
  };

  print('Original Map:');
  printMap(person);

  person['country'] = 'Pakistan';

  print('\nUpdated Map:');
  printMap(person);
}

void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}
