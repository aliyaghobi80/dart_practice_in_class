 class InterFaceWork{
  void work(){}
}
 class InterFaceSleep{
  void sleep(){}
}
abstract class Worker{
  String name;

  Worker({required this.name,});


  String getType();
}

class HumanImpl extends Worker implements InterFaceSleep,InterFaceWork{
  HumanImpl(String inputName)  : super(name:inputName) ;

  @override
  void work() {
    print("im $name working 8 hour...");
  }
  @override
  void sleep() {
    print("Im sleeping 8 hour");
  }
  @override
  String getType() {
    return "human";
  }
}

class RobotImpl extends Worker implements InterFaceWork{
  RobotImpl({required super.name,});

  @override
  void work() {
    print("im working 24 hour .....");
  }

  @override
  String getType() {
    return "robot";
  }
  //The robot does not sleep, it only works
  // @override
  // void sleep() {
  //   print("What ?? im just work , im not sleep");
  // }
}

main() {
RobotImpl robot = RobotImpl(name: "AiRobot");
HumanImpl humanImpl = HumanImpl("ali");

print("type is: ${robot.getType()}");
robot.work();

print("type is: ${humanImpl.getType()}");
humanImpl.work();
humanImpl.sleep();

}