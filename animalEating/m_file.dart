
import 'animals/cat.dart';
import 'animals/fish.dart';
import 'animals/lien.dart';
import 'animals/zibra.dart';
import 'food/goosht.dart';
import 'food/sabzi.dart';



main() {
  //instance of Food
  Goosht gooshtGHermez= Goosht();
  Sabzi alaf= Sabzi();
  Sabzi giahDaryae = Sabzi();
  //instance of animals
  Lien lien= Lien(gooshtGHermez, "شیر");
  Zebra gorKhar = Zebra(name: "گور خر", food: alaf);
  Cat gorbe=Cat(gooshtGHermez, "گربه سیاه");
  Fish mahi= Fish(name: "ماهی گلی", giah: alaf, food: giahDaryae);
  //test output
  lien.watEit();
  gorKhar.watEit();
  gorbe.watEit();
  mahi.watEit();

}