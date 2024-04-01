import 'dart:math';

int generateRandom() {
  Random random = Random();
  int randomNumber = random.nextInt(2);
  if (randomNumber == 0) {
    return 100;
  } else {
    return 0;
  }
}

void main() {
  int status = generateRandom() ?? 0;
  print('Status: $status');
}
