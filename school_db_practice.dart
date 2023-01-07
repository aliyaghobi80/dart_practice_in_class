import 'dart:io';

class Student{
  //fields
  String? name;
  String? family;
  String? birthDate;
  int? nationalCode;

  //constructor
  Student({ this.name, this.family, this.birthDate, this.nationalCode});
  Student.withNationalCode(int nationalCod){
    nationalCode = nationalCod;
  }
  Student.withOutProperty();



  void showInfo(){
    print("-------------------------");
    print('name is: $name');
    print('family is: $family');
    print('birthDate is: $birthDate');
    print('nationalCode is: $nationalCode');
    print("-------------------------");

  }
}

List<Student> students=[];

int findElementIndex(int serialNumberGiven ){
  int elementIndex=-1;
  for(int i=0;i<students.length;i++) {
    if (serialNumberGiven == students[i].nationalCode ) {
      elementIndex=i;
    }
  }
  return elementIndex;
}

//give student from client
void getStudent(){
  print("Enter name: ");
  String name=stdin.readLineSync()!;
  print("Enter family: ");
  String family=stdin.readLineSync()!;
  print("Enter birthDate: ");
  String birthDate=stdin.readLineSync()!;
  print("Enter integer SerialNumber: ");
  int nationalCode=int.parse(stdin.readLineSync()!) ;
  students.add(Student(name: name, family: family, birthDate: birthDate, nationalCode: nationalCode));

}
void printAllStudent(){
  for(int i=0;i<=students.length -1 ;i++){
   students[i].showInfo();
  }
}
void search(){
  int inputNationalCode=int.parse(stdin.readLineSync()!);

  int elementIndex=findElementIndex(inputNationalCode);

    if(inputNationalCode==students[elementIndex].nationalCode){
      print("--------------------------------------------");
      print("name is ${students[elementIndex].name}");
      print("family is ${students[elementIndex].family}");
      print("birthDate is ${students[elementIndex].birthDate}");
      print("nationalCode is ${students[elementIndex].nationalCode}");
      print("--------------------------------------------");
    }

}
void update(){
  print("Enter national Code for update: ");
  int inputNationalCode=int.parse(stdin.readLineSync()!);

//  find index of element for update
  int elementIndex=findElementIndex(inputNationalCode);

if(inputNationalCode==students[elementIndex].nationalCode){
  print("""
    select an item:
    
    1= change name;
    2= change family;
    3= change BirthDate;
    4= change nationalCode;
    """);
  int menuItem=int.parse(stdin.readLineSync()!);

  switch(menuItem){
    case 1:
      print("Enter New name for update:");
      String newName=stdin.readLineSync()!;
      students[elementIndex].name=newName;
      print("name edit is Successful √");
      break;
    case 2:
      print("Enter New family for update:");
      String newFamily=stdin.readLineSync()!;
      students[elementIndex].family=newFamily;
      print("family edit is Successful √");
      break;
    case 3:
      print("Enter New birthDate for update:");
      String newBirthDate=stdin.readLineSync()!;
      students[elementIndex].birthDate=newBirthDate;
      print("birthDate edit is Successful √");
      break;
    case 4:
      print("Enter New nationalCode for update:");
      int newNationalCode=int.parse(stdin.readLineSync()!) ;
      students[elementIndex].nationalCode=newNationalCode;
      print("nationalCode edit is Successful √");
      break;
    default:
      print("invalid input");
      break;
  }
}

}
void delete(){
  print("Enter national Code for delete student: ");
  int nationCode=int.parse(stdin.readLineSync()!);
  int elementIndex=findElementIndex(nationCode);
  students.removeAt(elementIndex);
  print("delete is success √");
}


void main() {
  bool flag =false;

  for(;flag==false;){
    print("select an item=>");
    print("""
      0 = end register;
      1 = create student;
      2 = read students;
      3 = update student;
      4 = delete user;
      5 = search student;
      """);

    int menuItem=int.parse(stdin.readLineSync()!);

  switch(menuItem) {
    case 0:
      flag=true;
      break;
    case 1:
     getStudent();
      break;
    case 2:
      printAllStudent();
      break;
    case 3:
      update();
      break;
    case 4:
      delete();
      break;
    case 5:
      search();
      break;
    default:
  }

  }
}




