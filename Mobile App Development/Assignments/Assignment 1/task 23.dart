void pr(int s, int e) {
  print('Even numbers between $s and $e:');
  for (int i = s; i < e; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  // Define the intervals
  int s = 10;
  int e = 30;
  pr(s, e);
}
