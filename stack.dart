
import 'dart:io';

void main() {
  // instance of stack class
Stack stack= Stack();
StackReveresString stackReveresString=StackReveresString();

bool flag=false;

for(;flag==false;){
  print("""
  
select item:
0=exit ,
1=push stack,
2=pop stack,
3=push reverse string
4=pop reverse string
      """);

  int menuItem=int.parse(stdin.readLineSync()!);
  switch(menuItem){
    case 0:
      flag=true;
      break;
    case 1:
      print("Enter value to push");
      String val=stdin.readLineSync()!;
      stack.push(val);

      break;
    case 2:
      stack.pop();
      break;
    case 3:
      print("Enter value to push");
      String input=stdin.readLineSync()!;
      stackReveresString.push(input);
      break;
    case 4:
      stackReveresString.pop();
      break;
  }
}

}

class Stack{
  List<String> stackList=[];
  int stackIndex=0;

  void push(String input){
    stackList.add(input);
    stackIndex++;
    print(stackList.length);
  }

  String pop(){
    String? outPut;

    outPut = stackList[stackIndex -1];
    stackIndex--;
    print(outPut);
    return outPut;
  }
}

class StackReveresString{

  String? strVal;
  String pop(){
    String reverseWord=" ";

    for(int i=strVal!.length-1;i>-1;i--){
      reverseWord = reverseWord + strVal![i];
    }
    print(reverseWord);

   return reverseWord;
  }

  void push(String input){
    strVal=input;
  }
}