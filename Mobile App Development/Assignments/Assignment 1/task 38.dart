void main() {
  List<String> friends = [
    'Qasim',
    'Usama',
    'Imran',
    'Momin',
    'Ali',
    'Faisal',
    'Chemma'
  ];

  print('All friend names:');
  for (String friend in friends) {
    print(friend);
  }

  String friendWithA = friends.firstWhere(
      (friend) => friend.toLowerCase().startsWith('a'),
      orElse: () => 'None');
  if (friendWithA != 'None') {
    print('First friend name that starts with "a": $friendWithA');
  } else {
    print('No friend name found that starts with "a"');
  }
}
