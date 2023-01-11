
import 'package:classp/dart_practice/interface/bird/interfaces/interfaces.dart';
import 'package:classp/dart_practice/interface/bird/mammals.dart';

abstract class Cage {

 void gate(FlyInterface flyInterface);
}

class RealCage extends Cage{
  @override
  void gate(FlyInterface flyInterface) {

  }
}
main() {
Cage cage=RealCage();

Bat bat =Bat(name: "BatWhite");

// Penguin penguin=Penguin(name: "Penguin");

//if pass penguin into gate , we give an error Because penguins don't fly
cage.gate(bat);

}