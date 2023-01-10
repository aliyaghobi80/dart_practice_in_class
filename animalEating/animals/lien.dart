

import '../food/goosht.dart';
import 'animal.dart';

class Lien extends Animal{
  Lien(Goosht goosht,String name): super(name:name ,food: goosht);

  @override
  void watEit() {
   print("im: $name and eating: ${food.info()}");
  }
}



