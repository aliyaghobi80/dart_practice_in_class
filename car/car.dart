import 'engine.dart';

import 'tire.dart';

class CarV6{
  Engine engine;
  int tire;
  String componyName;
  Tire flTier;
  Tire frTire;
  Tire rrTire;
  Tire rlTire;
  int speed;
  int _fuelLiter=0;

  CarV6(
      {required this.componyName,
        required this.tire,
        required this.engine,
        required this.flTier,
        required this.frTire,
        required this.rrTire,
        required this.rlTire,
        required this.speed,
      });

  void showFuel(){
    print(_fuelLiter);
  }
  void addFuel(int liter){
    _fuelLiter+=liter;
  }

  void acceleration(){
    speed+=10;
    _fuelLiter--;
  }

  void breakCar(){
    speed-=10;
  }

  void getSpeed(){
    print(speed);
  }

  void turnOn(){
    print("$componyName is on");
  }
  void turnOff(){
    print("$componyName is off");
  }

}


class CarV8{
  Engine engine;
  int tireCount;
  String componyName;
  Tire flTier;
  Tire frTire;
  Tire rrTire;
  Tire rlTire;
  int speed;
  int _fuelLiter=0;

  CarV8(
      {required this.componyName,
        required this.tireCount,
        required this.engine,
        required this.flTier,
        required this.frTire,
        required this.rrTire,
        required this.rlTire,

      }):speed=0;

  void showFuel(){
    print(_fuelLiter);
  }
  void addFuel(int liter){
    if(_fuelLiter<100){
      _fuelLiter+=liter;
    }else{
      print("bak pore");
    }

  }

  void acceleration(){
    speed+=10;
   _fuelLiter = _fuelLiter-4;
  }

  void breakCar(){
    speed-=10;
  }

  void showSpeed(){
    print(speed);
  }

  void turnOn(){
    print("$componyName is on");
  }
  void turnOff(){
    print("$componyName is off");
  }

}