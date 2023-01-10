
import 'package:classp/dart_practice/person.dart';

class Studentn extends Person{

  int personalNumber ;

  Studentn(String name, String family, int peNumber):personalNumber=peNumber, super(name: name,family: family);

  @override
  void showInfo() {
    print("my name is: $name $family , and : $personalNumber");
  }


}