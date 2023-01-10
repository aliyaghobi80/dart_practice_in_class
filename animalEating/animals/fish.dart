
import '../food/sabzi.dart';
import 'animal.dart';

class Fish extends Animal{
  Sabzi giah;
  Fish({required super.name,required this.giah, required super.food});

@override
  void watEit() {
    print("i am a: $name and Eating ${giah.info()}");
  }

}