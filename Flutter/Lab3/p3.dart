import 'dart:io';
class Friend
{
  String? Name;
  int? Age;

  Friend(this.Name, this.Age);
  void display()
  {
    print("Name:$Name");
    print("Age:$Age");
  }
}
void main()
{
  Map<String, Friend> Friends =
  {
    "Rutvi" : Friend("Rutvi", 21),
    "Eva" : Friend("Eva", 18),
    "Drashti" : Friend("Drashti", 19),
  };
  print("Enter name to search:");
  String searchName = stdin.readLineSync()!;
  if(Friends.containsKey(searchName))
  {
    print("Friend found!");
    Friend friend = Friends[searchName]!;
    friend.display();
  }
  else
  {
    print("Friend not found!");
  }
}