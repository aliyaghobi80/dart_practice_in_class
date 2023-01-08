import 'dart:io';

void main() {

bool flag=false;
int menuItem=0;


  for(;flag==false;){
    print("""
╔════════════════════╗
╠  M E N U  I T E M  ╣
╚════════════════════╝
Select a item (just Enter Number)  
     
[0] = endRegister
[1] = Insert Student (C)
[2] = Print All Students (R)
[3] = search student
[4] = edit student (U)
[5] = delete student (D)
      """);
    menuItem=int.parse(stdin.readLineSync()!);

    switch(menuItem){
      case 0:
        flag=true;
        break;

      case 1:
        readStudent();
        break;

      case 2:
        printStudents();
        break;
      case 3:
        search();
        break;
      case 4:
        edit();
        break;
      case 5:
        deleteStudent();
        break;
    }
  }
}

List<String> studentName=[];
List<String> studentFamily=[];
List<String> studentBirthDate=[];
List<int> studentSerialNumber =[];

int index=0;

void readStudent() {
  print("Enter name: ");
  String name=stdin.readLineSync()!;
  print("Enter family: ");
  String family=stdin.readLineSync()!;
  print("Enter birthDate: ");
  String birthDate=stdin.readLineSync()!;
  print("Enter integer SerialNumber: ");
  int serialNumber=int.parse(stdin.readLineSync()!) ;
  insertStudent(name, family, birthDate, serialNumber);
}

void insertStudent(String sName,String sFamily,String sBirthDate,int sSerialNumber){
  studentName.insert(index,sName);
  studentFamily.insert(index,sFamily);
  studentBirthDate.insert(index,sBirthDate);
  studentSerialNumber.insert(index,sSerialNumber);
  index++;
}

void edit(){
  print("enter serial number for search:");
  int serialNumberGiven=int.parse(stdin.readLineSync()!) ;
  for(int i=0;i<index;i++) {
    if (serialNumberGiven == studentSerialNumber[i]  ) {
      print("Which Element Want To Edit/Update?");
      print("""
╔════════════════════╗
╠  M E N U  E D I T  ╣
╚════════════════════╝
  [0] = end Edit;
  [1] = edit name;
  [2] = edit family;
  [3] = edit birthDate;
  [4] = edit serialNumber;
  """);
      int menuItm=int.parse(stdin.readLineSync()!);
      switch(menuItm) {
        case 0:
          break;
        case 1 :
          print("Enter New name for update:");
          String newName=stdin.readLineSync()!;
          studentName[i]=newName;
          print("edit is Successful √");
          break;
        case 2:
          print("Enter New family for update:");
          String newFamily=stdin.readLineSync()!;
          studentFamily[i]=newFamily;
          print("edit is Successful √");
          break;
        case 3:
          print("Enter New birthDate for update:");
          String newBirthDate=stdin.readLineSync()!;
          studentBirthDate[i]=newBirthDate;
          print("edit is Successful √");
          break;
        case 4:
          print("Enter New serialNumber for update:");
          int serialNumber=int.parse(stdin.readLineSync()!);
          studentSerialNumber[i]=serialNumber;
          print("edit is Successful √");
          break;
        default:
          print("input is invalid:");
      }
    }
  }
}

void search(){
  print("enter serial number for search:");
  int serialNumberGiven=int.parse(stdin.readLineSync()!) ;
  for(int i=0;i<index;i++) {
    if (studentSerialNumber[i] == serialNumberGiven) {
      print("==========");
      print("name: ${studentName[i]}");
      print("family: ${studentFamily[i]}");
      print("birthDate: ${studentBirthDate[i]}");
      print("serialNumber: ${studentSerialNumber[i]}");
      print("==========");
    }
  }
}

int findElementIndex(int serialNumberGiven ){
  int elementIndex=-1;
  for(int i=0;i<index;i++) {
    if (serialNumberGiven == studentSerialNumber[i] ) {
      elementIndex=i;
    }
  }
  return elementIndex;
}

void deleteStudent(){
  print("enter serial number of student:");

  int inputSerialNum=int.parse(stdin.readLineSync()!);

  int indexOfElement = findElementIndex(inputSerialNum);

  for(int i=indexOfElement;i<index-1;i++){
        studentName[i]=studentName[i+1];
        studentFamily[i]=studentFamily[i+1];
        studentBirthDate[i]=studentBirthDate[i+1];
        studentSerialNumber[i]=studentSerialNumber[i+1];
    }
 index--;
}

void printStudents(){
  for(int i=0;i<=index-1;i++){
    print("-_-_-_-_-_-_-_-_-_-_-_-");
    print("""
name:  ${studentName[i]}
family: ${studentFamily[i]}
BirthDate: ${studentBirthDate[i]}
SerialNumber: ${studentSerialNumber[i]}
    """);
    print("-_-_-_-_-_-_-_-_-_-_-_-");
  }
}











// import 'dart:io';
//
// void main() {
//
//
//   int menuItem = 0;
//   List allStudent=[];
//
//   for (;;) {
//     print("Are you register student? number 1 for insert data 2 for end");
//     menuItem = int.parse(stdin.readLineSync()!);
//     if (menuItem == 1) {
//       print("Enter your name?");
//       String? name = stdin.readLineSync();
//       print("Enter your family?");
//       String? family = stdin.readLineSync();
//       print("Enter your birthday?");
//       String? birthday = stdin.readLineSync();
//       print("Enter your serialCode?");
//       String? serialCode = stdin.readLineSync();
//
//       allStudent.add(giveStudentInfo(name, family, birthday, serialCode)) ;
//
//     } else if (menuItem == 2) {
//       break;
//     }
//   }
//
//   print("which student ?") ;
//   print(allStudent[1]) ;
//   print(allStudent);
//
// }
//
// Map<String, dynamic> giveStudentInfo(
//     String? name, String? family, int? birthday, int? serialCode) {
//   Map<String, dynamic> studentInfo = {
//     "name": name,
//     "family": family,
//     "birthday": birthday,
//     "serialCode": serialCode,
//   };
//
//   return studentInfo;
// }

