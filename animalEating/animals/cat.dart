
import '../food/goosht.dart';
import 'animal.dart';

class Cat extends Animal{

  Cat(Goosht moosh,String name): super(name:name ,food: moosh);

  @override
  void watEit() {
  print("im am a : $name and Eating :${food.info()}");
  }

}