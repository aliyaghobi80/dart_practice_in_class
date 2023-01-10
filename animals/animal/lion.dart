import '../food/food.dart';
import '../food/goosht.dart';
import 'animal.dart';

class Lion extends Animal {
  Lion({
    required super.name,
    required super.eyeCount,
  });

  @override
  void eat(Food food) {
    if (food is Goosht) {
      print("my favuritFood is${food.getName()}");
    } else {
      print("this food is not recommended for me");
    }
  }
}
