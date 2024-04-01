class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  var cat = Cat(1, 'Whiskers', 'Gray', 'Meow');

  print('Details of the Cat:');
  print('ID: ${cat.id}');
  print('Name: ${cat.name}');
  print('Color: ${cat.color}');
  print('Sound: ${cat.sound}');
}
