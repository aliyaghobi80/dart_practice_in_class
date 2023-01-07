
import 'dart:io';

void main() {

stdout.write("Enter firstNumber: ");
int firstNumber=int.parse(stdin.readLineSync()!);

stdout.write("Enter operator (+ - * /) : ");
String op=stdin.readLineSync()!;

stdout.write("Enter secondNumber: ");
int secondNumber=int.parse(stdin.readLineSync()!);


int result=calculator(firstNumber, op, secondNumber);
print(result);
}

int stringToInt(String num){

  int numLength=num.length;
  int ascii=0;
  int n=1;
  for(int i=numLength -1;i>=0;i--){
    int number=(num.codeUnitAt(i)-48);
    ascii=(number * n )+ascii;
    n=n*10;
  }
  return ascii;

}

int calculator(int fNumber,String op,int sNumber){
  int? result;
  switch(op) {
    case "+":
      result = fNumber + sNumber;
      break;
    case "-":
      result= fNumber - sNumber;
      break;
    case "*":
      result= fNumber * sNumber;
      break;
    case "/":
      result= fNumber ~/ sNumber;
      break;
    default:
  }
  return result!;


}