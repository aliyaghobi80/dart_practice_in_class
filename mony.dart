abstract class Cash{
  int getValue();
}

class OneDolar extends Cash{
  @override
  int getValue() {
      return 1;
  }
}

class TowDaler extends Cash{
  @override
  int getValue() {
    return 2;
  }
  
}

main() {
  OneDolar one =OneDolar();
  TowDaler  tow = TowDaler();
  
print(  one.getValue() + tow.getValue());
}
