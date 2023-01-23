
class MathMathic {
  final List<int> giveListFromUser;

  MathMathic(this.giveListFromUser);

  int sumation() {
    int sum = 0;
    for (int i = 0; i < giveListFromUser.length; i++) {
      sum += giveListFromUser[i];
    }
    return sum;
  }

  double avrage() {
    return sumation() / giveListFromUser.length;
  }

  //اشتراک
  List<int> intersections(List<int> inputList) {
    List<int> result = [];
    for (int i = 0; i < giveListFromUser.length; i++) {
      for (int j = 0; j < inputList.length; j++) {
        if (giveListFromUser[i] == inputList[j]) {
          result.add(inputList[j]);
        }
      }
    }
    return result;
  }
  //اجتماع
  List<int> union({required List<int> inputList}) {
    List<int> result =giveListFromUser;

    for (int i = 0; i < inputList.length ; i++) {
      result.add(inputList[i]);
    }

    result = result.toSet().toList();
    return result;
  }

  //یکسان
  List<int> duplicated(){
    List<int> result=[];
    for(int i=0;i<giveListFromUser.length ;i++){
      for(int j=0;j<giveListFromUser.length;j++){
        if(giveListFromUser[i]==giveListFromUser[j]){
          result.add(giveListFromUser[i]);
        }
      }
    }
    return result;
  }

  int max(){
    int _max=giveListFromUser[0];
    for(int i=0;i<giveListFromUser.length;i++){
        if(giveListFromUser[i]>_max){
          _max=giveListFromUser[i];
        }
      }

    return _max;
  }
  int min(){
    int _min=giveListFromUser[0];
    for(int i=0;i<giveListFromUser.length;i++){
      if(giveListFromUser[i]<_min){
        _min=giveListFromUser[i];
      }
    }
    return _min;
  }

  List<int> difference(List<int> inputList) {
    List<int> difference = [...giveListFromUser];
    for (int i = 0; i < giveListFromUser.length; i++) {
      for (int j = 0; j < inputList.length; j++) {
        if (giveListFromUser[i] == inputList[j]) {
          difference.remove(inputList[j]);
        }
      }
    }
    return difference;
  }

  List<int> tafazol(List<int> list) {
    List<int> result = [];
    for (int i = 0; i < giveListFromUser.length; i++) {
      for (int j = 0; j < list.length; j++) {
        if (giveListFromUser[i] != list[j]) {
          result.add(giveListFromUser[i]);
        }
      }
    }
    return result;
  }
}
