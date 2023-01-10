import 'animal/boz.dart';
import 'food/goosht.dart';
import 'food/sabzi.dart';

void main() {
  // Goosht goosht = Goosht();
  Sabzi sabzi = Sabzi();

  Booz booz = Booz(eyeCount: 2, name: 'بز');
 //If we give goosht instead of sabzi, we get an error
  booz.eat(sabzi);
  
}
