import 'dart:io';
void main()
{
  print("Enter n:");
  int n = int.parse(stdin.readLineSync()!);
  List list = [];
  for(int i = 0; i < n; i++)
  {
    print("Enter element-${i + 1}:");
    String str1 = stdin.readLineSync()!;
    list.add(str1);
  }
  print("List is:$list");
}