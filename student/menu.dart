import 'dart:io';

import 'model/student_data_model.dart';



int findElementIndex(int id ){
  int elementIndex=-1;
  for(int i=0;i<students.length;i++) {
    if (id == students[i].id ) {
      elementIndex=i;
    }
  }
  return elementIndex;
}

void addStudent(){
  print("Enter id: ");
  int id=int.parse(stdin.readLineSync()!);
  print("Enter name: ");
  String name=stdin.readLineSync()!;
  print("Enter family: ");
  String family=stdin.readLineSync()!;
  students.add(Student(id: id,name: name,family: family),);
  print("add student is success ...");
}

void edit(){
  print("Enter id for edit: ");
  int inputId=int.parse(stdin.readLineSync()!);

//  find index of element for update
  int elementIndex=findElementIndex(inputId);

  if(inputId==students[elementIndex].id){
    print("""
    select an item:
    1= change id;
    2= change name;
    3= change family;
    """);
    int menuItem=int.parse(stdin.readLineSync()!);

    switch(menuItem){
      case 1:
        print("Enter New id for edit:");
        String newId=stdin.readLineSync()!;
        students[elementIndex].name=newId;
        print("id edit is Successful √");
        break;
      case 2:
        print("Enter New name for edit:");
        String newName=stdin.readLineSync()!;
        students[elementIndex].name=newName;
        print("name edit is Successful √");
        break;
      case 3:
        print("Enter New family for edit:");
        String newFamily=stdin.readLineSync()!;
        students[elementIndex].family=newFamily;
        print("family edit is Successful √");
        break;
      default:
        print("invalid input");
        break;
    }
  }

}
void delete(){
  print("Enter student id for delete student: ");
  int id=int.parse(stdin.readLineSync()!);
  int elementIndex=findElementIndex(id);
  students.removeAt(elementIndex);
  print("delete is success √");
}
void printAllStudent(){
  for(int i=0;i<=students.length -1 ;i++){
    students[i].showInfo();
  }
}


void main() {
  bool flag =false;

  for(;flag==false;){
    print("select an item=>");

    print("""
      1 = add student;
      2 = edit students;
      3 = delete student;
      4 = printAll student;
      5 = end;
      """);

    int menuItem=int.parse(stdin.readLineSync()!);

    switch(menuItem) {
      case 1:
        addStudent();
        break;
      case 2:
        edit();
        break;
      case 3:
        delete();
        break;
      case 4:
        printAllStudent();
        break;
      case 5:
        flag=true;
        break;
      default:
    }
  }
}
