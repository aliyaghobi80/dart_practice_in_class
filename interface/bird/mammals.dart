

import 'interfaces/interfaces.dart';

abstract class Mammals{
  String name;
  Mammals({required this.name});
  String getName();
}

class Bat extends Mammals implements FlyInterface{
  Bat({required super.name});

  @override
  void fly() {
    print("i am $name and Mammals and can Fly");
  }

  @override
  String getName() {
    return name;
  }

}