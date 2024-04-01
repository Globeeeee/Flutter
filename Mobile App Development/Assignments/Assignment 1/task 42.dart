class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void printDetails() {
    print('Laptop ID: $id');
    print('Laptop Name: $name');
    print('RAM: $ram GB');
    print('');
  }
}

void main() {
  var laptop1 = Laptop(1, 'Laptop A', 8);
  var laptop2 = Laptop(2, 'Laptop B', 16);
  var laptop3 = Laptop(3, 'Laptop C', 32);

  print('Details of Laptop 1:');
  laptop1.printDetails();

  print('Details of Laptop 2:');
  laptop2.printDetails();

  print('Details of Laptop 3:');
  laptop3.printDetails();
}
