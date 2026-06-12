import 'dart:io';
void main()
{
  List <double> numbers = [10.5, 20.25, 15.75, 5.0];
  for(double num in numbers)
    {
      print(num);
    }
  double sum = 0;
  for(double num in numbers)
    {
      sum += num;
    }
  print("Sum:${sum.toStringAsFixed(2)}");
}