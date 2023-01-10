import '../food/food.dart';

abstract class Animal {
  String name;
  int eyeCount;

  Animal({required this.name, required this.eyeCount,});
  
  void eat(Food food);
}
