void main() {
  Map<String, String> contacts = {
    'Qasim': '12345',
    'Usama': '456-789-0123',
    'Butt': '456-789-0123'
  };

  print('Original Map:');
  printMap(contacts);

  Set<String> keysWithLengthFour =
      contacts.keys.where((key) => key.length == 4).toSet();

  print('\nKeys with length 4:');
  print(keysWithLengthFour);
}

void printMap(Map<String, String> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}
