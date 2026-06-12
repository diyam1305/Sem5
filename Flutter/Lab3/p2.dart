import 'dart:io';
class Animal
{
  void AnimalSound()
  {
    print("Unknown");
  }
}
class Cat extends Animal
{
  void AnimalSound()
  {
    print("Meow");
  }
}
void main()
{
  Animal a = Animal();
  a.AnimalSound();
  Cat c = Cat();
  c.AnimalSound();
}