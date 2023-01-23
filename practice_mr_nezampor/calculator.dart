class SumInterface {}

class Calculator {
  final int a;
  final int b;

  Calculator(this.a, this.b);

  int sum() => a + b;

  int multiple() {
    int sum = 0;
    for (int i = 0; i < a; i++) {
      sum+=b;
    }
    return sum;
  }
}
