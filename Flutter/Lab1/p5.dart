import 'dart:io';
void main()
{
  print("Enter a and b:");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print("1.Addition");
  print("2.Subtraction");
  print("3.Multiplication");
  print("4.Division");
  print("Enter your choice:");
  int choice = int.parse(stdin.readLineSync()!);

  /*if(choice == 1)
    {
      print("Ans is:${a + b}");
    }
  else if(choice == 2)
    {
      print("Ans is:${a - b}");
    }
  else if(choice == 3)
    {
      print("Ans is:${a * b}");
    }
  else if(choice == 4)
    {
      print("Ans is:${a / b}");
    }
  else
    {
      print("Enter valid number");
    }*/
  switch(choice)
  {
    case 1:
      print("Ans is:${a + b}");
      break;

    case 2:
      print("Ans is:${a - b}");
      break;

    case 3:
      print("Ans is:${a * b}");
      break;

    case 4:
      print("Ans is:${a / b}");
      break;

    default:
      print("Enter valid choice");
      break;
  }
}