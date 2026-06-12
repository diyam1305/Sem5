import 'dart:io';
void main()
{
  print("Enter n:");
  int n = int.parse(stdin.readLineSync()!);
  List <int> list = [];
  for(int i = 0; i < n; i++)
  {
    print("Enter element-${i + 1}");
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  print("List is:$list");
}