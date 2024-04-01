class User {
  String name;
  int age;
  bool isActive;

  User(this.name, this.age, {this.isActive = true});

  void displayUserInfo() {
    print('Name: $name, Age: $age, Active: $isActive');
  }
}

void main() {
  User user1 = createUser('Qasim', 21);
  user1.displayUserInfo();

  User user2 = createUser('Imran', 21, isActive: false);
  user2.displayUserInfo();
}

User createUser(String name, int age, {bool isActive = true}) {
  return User(name, age, isActive: isActive);
}
