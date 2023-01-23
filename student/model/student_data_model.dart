class Student{
  //fields
  int? id;
  String? name;
  String? family;

  //constructor
  Student({ this.name, this.family, this.id});

  void showInfo(){
    print("-------------------------");
    print('name is: $id');
    print('name is: $name');
    print('family is: $family');
    print("-------------------------");

  }
}

List<Student> students=[];