
import 'animal.dart';

class Moosh extends Animal{
  Moosh({required super.name, required super.food});

  @override
  void watEit() {
    print("i eating sabzi");
  }
   bool isAmIFood(){
    return true;
   }
}