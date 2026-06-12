import 'dart:io';
void main()
{
  print("Enter marks of 5 subjects:");
  int n1= int.parse(stdin.readLineSync()!);
  int n2= int.parse(stdin.readLineSync()!);
  int n3= int.parse(stdin.readLineSync()!);
  int n4= int.parse(stdin.readLineSync()!);
  int n5= int.parse(stdin.readLineSync()!);

  int total = n1 + n2 + n3 + n4 + n5;
  print("Total:$total");

  double per = (total * 100)/500;
  print("Percentage:$per");
}