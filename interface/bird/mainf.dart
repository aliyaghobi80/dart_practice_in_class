import 'package:classp/dart_practice/interface/bird/bird.dart';
import 'package:classp/dart_practice/interface/bird/mammals.dart';

main() {
  Kabotar kabotar= Kabotar("KabootarMeshki");
  Bat bat = Bat(name: "BatBlack");
  Penguin penguin = Penguin(name: "WhitePenguin");

  kabotar.fly();
  bat.fly();
  penguin.walk();
}