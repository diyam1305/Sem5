import 'dart:io';
void main()
{
  print("Enter number of element:");
  int num = int.parse(stdin.readLineSync()!);
  List <int> list = [];
  for(int i = 0; i < num; i++)
    {
      print("Enter element-${i + 1}:");
      int value = int.parse(stdin.readLineSync()!);
      list.add(value);
    }
  for(int i = 0; i < num; i++)
    {
      for(int j = i + 1; j < num; j++)
        {
          if(list[i] > list[j])
            {
              int temp = list[i];
              list[i] = list[j];
              list[j] = temp;
            }
        }
    }
  print("Sorted list is:$list");
}