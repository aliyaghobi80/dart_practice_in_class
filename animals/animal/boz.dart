import '../food/food.dart';
import '../food/sabzi.dart';
import 'animal.dart';

class Booz extends Animal {
  Booz({
    required super.name,
    required super.eyeCount,
  });

  @override
  void eat(Food food) {
    if (food is Sabzi) {
      print("my name is: $name, my food is: ${food.getName()}");
    } else {
      print("this food is not recommended for me");
    }
  }
}
