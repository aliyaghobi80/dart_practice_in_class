import 'dart:io';

class Student{
  //fields
  String? name;
  String? family;
  String? birthDate;
  int? nationalCode;

  //constructor
  Student({ this.name, this.family, this.birthDate, this.nationalCode});
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
  // Student student=Student.withOutProperty();

  int inputNationalCode=int.parse(stdin.readLineSync()!);

  for(int i=0;i<students.length-1;i++){
    if(inputNationalCode==students[i].nationalCode){
      print("name is ${students[i].name}");
      print("family is ${students[i].family}");
      print("birthDate is ${students[i].birthDate}");
      print("nationalCode is ${students[i].nationalCode}");
    }
  }



}

int findElementIndex(int serialNumberGiven ){
  int elementIndex=-1;
  for(int i=0;i<students.length;i++) {
    if (serialNumberGiven == students[i].nationalCode ) {
      elementIndex=i;
    }
  }
  return elementIndex;
}

void update(){
  stdout.write("Enter national Code for update: ");
  int inputNationalCode=int.parse(stdin.readLineSync()!);

  //finde index of element for update
  int elementIndex=findElementIndex(inputNationalCode);




  for(int i=elementIndex;i<students.length-1;i++){
    stdout.write("select an item:");
    print("""
    1= change name;
    2= change family;
    3= change BirthDate
    4= change nationalCode
    """);
    int menuItem=int.parse(stdin.readLineSync()!);

    switch(menuItem){
      case 1:

    }
  }


  // switch(menuItem) {
  //   case 1:
  //     print("enter new name: ");
  //     String newName=stdin.readLineSync()!;
  //     students
  //     break;
  //   default:
  // }

}
void main() {


  
  // Student student= Student();

  bool flag =false;



  for(;flag==false;){
    print("select an item;");
    print("""
      0 = end register;
      1 = insert user;
      2 = read user;
      3 = update user;
      4 = delete user;
      5 = search;
      """);

    int menuItem=int.parse(stdin.readLineSync()!);

  switch(menuItem) {
    case 0:
      flag=true;
      break;
    case 1:
     getStudent();
     printAllStudent();
      break;
    case 2:
      print("read user");
      break;
    case 3:
      //update
      break;
    case 4:
      print("delete user");
      break;
    case 5:
      search();
      break;
    default:
  }

  }
}




//    var setName=<type>{};
//     Or
//     Set<type> setname ={};
// union
// difference
// intersection
