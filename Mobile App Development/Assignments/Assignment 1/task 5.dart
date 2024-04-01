import 'dart:io';
void main()
{
print('Enter a number');
int num=int.parse(stdin.readLineSync()!);
int v=num*num;
print('Your num square is : ${v}');
}