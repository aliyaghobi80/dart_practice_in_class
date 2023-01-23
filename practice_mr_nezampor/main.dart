
import 'math_math.dart';

List<int> giveListFromUser=[2,3,5,8];
void main() {
  // Calculator cal = Calculator(5,6);
  // print('a is ${cal.a}');
  // print('b is ${cal.b}');
  // print('sum is: ${cal.sum()}');
  // print('multiple is : ${cal.multiple()}');


  MathMathic mathMathic=MathMathic(giveListFromUser);

  print('sumation: ${mathMathic.sumation()}');
  print('average: ${mathMathic.avrage()}');
  print('eshtrac: ${mathMathic.intersections([1,5,9])}');
  print('union: ${mathMathic.union(inputList: [1,5,9])}');
  print('diffrence: ${mathMathic.difference([1,5,9])}');
  print('duplicated: ${mathMathic.duplicated()}');
  print('max: ${mathMathic.max()}');
  print('min: ${mathMathic.min()}');
}
