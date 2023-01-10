
import '../food/food.dart';

abstract class Animal {
  String name;
  Food food;

  Animal({required this.name,required this.food});

  void watEit();
}