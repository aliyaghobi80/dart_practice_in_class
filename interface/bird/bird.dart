

import 'interfaces/interfaces.dart';

abstract class Bird {
  String name = '';

  Bird({required this.name});

  String getName();
}

class Kabotar extends Bird implements FlyInterface {
  Kabotar(String name) : super(name: name);

  @override
  String getName() {
    return "im a $name";
  }

  @override
  void fly() {
    print("im a $name and fly ▌");
  }
}

class Penguin extends Bird implements WalkInterface{
  Penguin({required super.name});

  @override
  String getName() {
    return "im a$name";
  }

  @override
  void walk() {
    print("im a $name and Walking");
  }
}
