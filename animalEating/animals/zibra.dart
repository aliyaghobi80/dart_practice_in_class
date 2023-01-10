
import '../food/sabzi.dart';
import 'animal.dart';

class Zebra extends Animal{
  Sabzi? sabzi;

  Zebra({required super.name, required super.food});

  @override
  void watEit() {
  print("im :$name just eating : ${food.info()}");
  }

}