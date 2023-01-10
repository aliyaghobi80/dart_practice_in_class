
import 'tire.dart';

import 'car.dart';
import 'engine.dart';

main() {
  Engine enginePride = Engine("kiaPride");
  Tire flTire = Tire(side: "left");
  Tire frTire = Tire(side: "right");
  Tire rlTire = Tire(side: "left");
  Tire rrTire = Tire(side: "right");
  // Fuel fuel= Fuel();
  CarV8 peugeot = CarV8(
    componyName: "peugeot",
    tireCount: 4,
    engine: enginePride,
    flTier: flTire,
    frTire: frTire,
    rrTire: rrTire,
    rlTire: rlTire,
  );

  print("car name is:${peugeot.componyName}, "
      "Car engine name: ${peugeot.engine.name}");
  print("showFuel");
  peugeot.showFuel();
  print("addFuel20");
  peugeot.addFuel(20);
  print("showFuel");
  peugeot.showFuel();
  print("showSpeed");
  peugeot.showSpeed();
  print("acceleration");
  peugeot.acceleration();
  print("acceleration");
  peugeot.acceleration();
  print("acceleration");
  peugeot.acceleration();
  print("showSpeed");
  peugeot.showSpeed();
  print("showFuel");
  peugeot.showFuel();
}