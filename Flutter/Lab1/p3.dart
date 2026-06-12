import 'dart:io';
void main()
{
  print("Enter weight in pounds:");
  double w = double.parse(stdin.readLineSync()!) ;

  print("Enter height in inches:");
  double h = double.parse(stdin.readLineSync()!);

  double BMI = w / (h * h);
  print("BMI:$BMI");
}