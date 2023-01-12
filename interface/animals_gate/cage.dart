
import 'package:classp/dart_practice/interface/bird/bird.dart';
import 'package:classp/dart_practice/interface/bird/interfaces/interfaces.dart';
import 'package:classp/dart_practice/interface/bird/mammals.dart';

class Cage {
  @override
  void gate(FlyInterface bird) {
    print("${bird.getName()} is flying...");
  }
}

main() {
Cage cage=Cage();

Bat bat =Bat(2,"Bat purple");
// Penguin penguin=Penguin(name: "Penguin");

//if pass penguin into gate , we give an error Because penguins don't fly
cage.gate(bat);

}