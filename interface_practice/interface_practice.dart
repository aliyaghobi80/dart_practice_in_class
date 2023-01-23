abstract class Workerr{
  //
  // void sleep();
  // void work();
  String getType();
}

 class InterfaceWork{
  void work(){}
}
 class InterfaceSleep{
  void sleep(){}
}
class Human extends Workerr implements InterfaceSleep,InterfaceWork{
  String fullName;
  Human({required this.fullName});
  @override
  void sleep() {
    print("$fullName is 8 hour sleeping , type is : ${getType()}");
  }

  void work(){
    print("$fullName is 8 hour working type is : ${getType()}");
  }

  @override
  String getType() {
    return "human";
  }
}

class Robot extends Workerr implements InterfaceWork{
  @override
  void work() {
    print('im a ${getType()} and 24 hour work and Not sleeping');
  }

  @override
  String getType() {
    return "robot";
  }
}

 class WorkerGate {

  void gate(Workerr human){
    if(human is InterfaceSleep){
   print("it is a human worker");
    }
    else{
      print("it is a Robot Worker");
    }
  }
}
main() {
  //instance of Human class
  Human ali= Human(fullName: 'ali yaghobi');
  //instance of Robot class
  Robot workerRobot = Robot();
  //human work and sleeps
  ali.sleep();
  ali.work();
  //the robot only works and not sleeping (24 hour works) and not Tired
  workerRobot.work();

  WorkerGate gate= WorkerGate();
  gate.gate(ali);
}