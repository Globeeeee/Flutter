import 'dart:math';

String randPass(int l) {
  const String charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()-_+=<>?';
  Random r = Random();
  String p = '';

  for (int i = 0; i < l; i++) {
    int randomIndex = r.nextInt(charset.length);
    p += charset[randomIndex];
  }

  return p;
}

void main() {
  int pl = 12;
  String p = randPass(pl);
  print('Generated Password: $p');
}
