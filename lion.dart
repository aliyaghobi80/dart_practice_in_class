class Lion{
Lion({required this.lienRightEye,required this.lienLeftEye});
LionRightEye lienRightEye;
LionLeftEye lienLeftEye;

void callEye(){
  lienRightEye.lienRightEye();
  lienLeftEye.lienLeftEye();
}

//setter getter
  // LienLeftEye? _leftEye;
  // LienRightEye? _rightEye;
  //
  // void setLeftEye(LienLeftEye leftEye){
  //   _leftEye=leftEye;
  // }
  // void setRightEye(LienRightEye rightEye){
  //   _rightEye=rightEye;
  // }
  //
  // void getLienLeftEye(){
  //   _leftEye!.lienLeftEye();
  // }
  // void getLienRightEye(){
  //    _rightEye!.lienRightEye();
  // }


}
//lien
class LionLeftEye{

  void lienLeftEye(){
    print("lienLeftEye is seee....");
  }
}
class LionRightEye{
  lienRightEye(){
    print("lienRightEye is seee....");
  }
}

//cow
class Cow{

  CowLeftEye? _cowLeftEye;
  CowRightEye? _cowRightEye;

  void setLeftEye(CowLeftEye leftEye){
    _cowLeftEye=leftEye;
  }
  void setRightEye(CowRightEye rightEye){
    _cowRightEye=rightEye;
  }

  void getCowLeftEye(){
    _cowLeftEye!.cowLeftEye();
  }
  void getCowRightEye(){
    _cowRightEye!.cowRightEye();
  }


}
class CowLeftEye{
  void cowLeftEye(){
    print("cowLeftEye is seee....");
  }
}
class CowRightEye{
  cowRightEye(){
    print("cowRightEye is seee....");
  }
}


main() {
  //lien
  LionRightEye lienRightEye= LionRightEye();
  LionLeftEye lienLeftEye =LionLeftEye();
  Lion lien= Lion(lienLeftEye: lienLeftEye,lienRightEye: lienRightEye);

  lien.callEye();
  //setter getter of lien
  // lienRightEye.lienRightEye();
  // lien.setRightEye(lienRightEye);
  // lien.setLeftEye(lienLeftEye);
  // lien.getLienLeftEye();

  //cow
  Cow cow= Cow();
  CowLeftEye cowLeftEye=CowLeftEye();
  CowRightEye cowRightEye = CowRightEye();
  //setter
  cow.setLeftEye(cowLeftEye);
  cow.setRightEye(cowRightEye);
  //getter
  cow.getCowLeftEye();
  cow.getCowRightEye();
}