
class Person {
 Person({required this.birthYear});
  String? name;
  String? family;
  int birthYear;
  // int? _birthDate;


  int get age {
    return 1401-birthYear;
  }

  // void set birthDate(int inputBirthDate ) {
  //   _birthDate = inputBirthDate;
  // }
}

main() {
Person ali= Person(birthYear: 1380);
ali.name="ali";
print("name: ${ali.name} age is: ${ali.age}");

}