import 'package:classp/dart_practice/interface/bird/bird.dart';
import 'package:classp/dart_practice/interface/bird/mammals.dart';

main() {
  Kabotar kabotar= Kabotar("Kabootar Meshki");
  Bat bat = Bat(2,  "BatBlack");
  Penguin penguin = Penguin(name: "WhitePenguin");

  kabotar.fly();
  bat.fly();
  penguin.walk();
}