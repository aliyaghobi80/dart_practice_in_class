
void main(){
// 20 first number fibonachi
  int number=18;
  int fib1=0;
  int fib2=1;
  int fib3;
  print(fib1);
  print(fib2);
  for(int i=0;i<=number;i++){

    fib3=fib1+fib2;
    fib1=fib2;
    fib2=fib3;
    print("$fib3 ${i.toString()}");
  }

}
