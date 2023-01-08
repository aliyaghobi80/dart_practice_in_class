
import 'dart:io';

void main() {
  // instance of stack class
Stack stack= Stack();
StackReveresString stackReveresString=StackReveresString();
StackReverseList stackReverseList=StackReverseList();
//condition for loop
bool flag=false;

for(;flag==false;){
  print("""
  
╔════════════════════╗
╠  M E N U  I T E M  ╣
╚════════════════════╝  
select item (just enter number):
0=exit ,
1=push stack,
2=pop stack,
3=push reverse string
4=pop reverse string
5=push reverse string List
6=pop reverse string List

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
    case 5:
      print("Enter value to push");
 String inputValue=stdin.readLineSync()!;
      stackReverseList.push(inputValue);
      break;
    case 6:
      print(stackReverseList.pop());
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
  void push(String input){
    strVal=input;
  }
  String pop(){
    String reverseWord=" ";

    for(int i=strVal!.length-1;i>=0;i--){
      reverseWord = reverseWord + strVal![i];
    }
    print(reverseWord);

   return reverseWord;
  }
}

class StackReverseList{
List<String?> originalList=[];
List<String?> reversList=[];

void push(String inputValue){
  originalList.add(inputValue);
}
List<String?> pop(){

    String? lastItem=originalList.last;

    reversList.add(lastItem);

    originalList.removeLast();
  return reversList;
}
}