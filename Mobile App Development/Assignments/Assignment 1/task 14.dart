void main() 
{
  String character = 'a';
  if (['a', 'e', 'i', 'o', 'u'].contains(character.toLowerCase())) {
    print('$character is a vowel.');
  } else {
    print('$character is a consonant.');
  }
}
