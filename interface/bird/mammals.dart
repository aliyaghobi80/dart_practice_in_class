

import 'interfaces/interfaces.dart';

abstract class Mammals{
  String name;
  int leg;
  Mammals({required this.leg, required this.name });
}

class Khazande {
  String? khazand(){}
}

class Bat extends Mammals implements FlyInterface{
  Bat(int inputLeg,String inputName):super(leg: inputLeg,name: inputName);

  @override
  void fly() {
    print("I am a $name, I have $leg legs and I fly ");
  }
  @override
  String getName() {
    return name;
  }
}