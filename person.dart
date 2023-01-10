
abstract class Person{
  String name;
  String family;
  Person({required this.name,required this.family});
  void showInfo();

}

class Student extends Person{
  int studentNumber;
  Student({required super.name, required super.family , required this.studentNumber});

  @override
  void showInfo() {
    print("my name is:$name, $family, and student number is: $studentNumber");
  }

}

class Teacher extends Person{
  int personalNumber;
  Teacher({required super.name, required super.family ,  required this.personalNumber});
  @override
  void showInfo() {
    print("my name is:$name, $family , and PersonalNumber is : $personalNumber");
  }
}

main() {
  Student ali= Student(name: "ali", family: "yaghobi", studentNumber: 992168);
  Teacher arashChenari = Teacher(name: "arash", family: "chenari", personalNumber: 123456789);

ali.showInfo();
arashChenari.showInfo();
}