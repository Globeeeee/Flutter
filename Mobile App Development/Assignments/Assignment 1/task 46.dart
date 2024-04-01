class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  set id(int value) => _id = value;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get color => _color;
  set color(String value) => _color = value;

  double get price => _price;
  set price(double value) => _price = value;
}

void main() {
  var camera1 = Camera(1, 'Canon', 'Black', 500.0);
  var camera2 = Camera(2, 'Nikon', 'Silver', 600.0);
  var camera3 = Camera(3, 'Sony', 'Red', 700.0);

  print('Details of Cameras:');
  printCameraDetails(camera1);
  printCameraDetails(camera2);
  printCameraDetails(camera3);
}

void printCameraDetails(Camera camera) {
  print('ID: ${camera.id}');
  print('Brand: ${camera.brand}');
  print('Color: ${camera.color}');
  print('Price: \$${camera.price.toStringAsFixed(2)}');
  print('');
}
