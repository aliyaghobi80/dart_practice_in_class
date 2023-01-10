
class Fuel{
  int _fuelLiter=100;

  Fuel(){
    _fuelLiter=100;
  }

  int? getFuelLitr(){
    // if(_fuelLiter)
   return _fuelLiter;
  }
  void set setFuel(int inputLitr){
    if(inputLitr>100){
      print("bak pore ");
    }
    else if(inputLitr <0){
      print("invalid input");
    }
    else{
      _fuelLiter += inputLitr;
    }
  }
}
