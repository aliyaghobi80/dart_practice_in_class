
import '../../animals/cat.dart';
import '../../animals/zibra.dart';
import '../../food/food.dart';
import '../../food/goosht.dart';
import '../../food/sabzi.dart';

abstract class Animal{
  String name;
  Food food;
  Animal({required this.name , required this.food});

  void eat();
}

class Lien extends Animal{
  Lien({required super.name, required super.food});

  @override
  void eat() {
  if(food is Goosht){
    print("im eating ${food.info()}");
  }
  else{
    print("im not eating");
  }
  }

}

main() {
  Goosht goosht= Goosht();
  Sabzi sabzi= Sabzi();

  Lien lien= Lien(name: "shir", food: goosht);

  Cat cat= Cat(goosht, "gorbe");

  Zebra zebra = Zebra(name: "khar", food: sabzi);

  lien.eat();
  zebra.watEit();
  cat.watEit();
}