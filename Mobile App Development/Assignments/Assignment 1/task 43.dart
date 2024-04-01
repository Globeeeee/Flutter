class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  var houseList = <House>[];

  var house1 = House(1, 'House A', 200000.0);
  var house2 = House(2, 'House B', 300000.0);
  var house3 = House(3, 'House C', 400000.0);

  houseList.add(house1);
  houseList.add(house2);
  houseList.add(house3);

  print('Details of Houses:');
  for (var house in houseList) {
    print('House ID: ${house.id}');
    print('House Name: ${house.name}');
    print('Price: \$${house.price}');
    print('');
  }
}
