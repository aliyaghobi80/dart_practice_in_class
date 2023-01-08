class Person {
  String name;
  String family;
  int eyeCount=2;
  Heart heart;
  Brain brain;
  Hand leftHand;
  Hand rightHand;
  Legs rightLeg;
  Legs leftLeg;

  Eye leftEye;
  Eye rightEye;

  Person({
    required this.name,
    required this.family,
    required this.brain,
    required this.heart,
    required this.leftHand,
    required this.rightLeg,
    required this.leftLeg,
    required this.rightHand,
    required this.leftEye,
    required this.rightEye,
  });


   see() {
    leftEye.work();
    rightEye.work();
  }

   heartWork() {
    heart.isHeartWork();
  }

   brainWork() {
    brain.work();
  }

   leftLegsWork() {
    leftLeg.work();
  }

   rightLegsWork() {
    leftLeg.work();
  }
}

class Heart {
  String? poump;

String  isHeartWork() {
    return ("heart is work..") ;
  }
}

class Brain {
  String? name = "maghz";

  String work() {
    return("$name is work");
  }
}

class Hand {

  String work() {
    return("working...");
  }

}

class Eye {

 String work() {
    return("see ing") ;
  }
}

class Legs {
  String work() {
    return("walking");
  }
}

main() {
  Brain brain = Brain();
  Heart heart = Heart();
  Hand leftHand = Hand();
  Hand rightHand = Hand();
  Legs rightLeg = Legs();
  Legs leftLeg = Legs();
  Eye leftEye= Eye();
  Eye rightEye=Eye();
  Person ali = Person(
    name: 'ali',
    family: 'yaghobi',
    brain: brain,
      heart: heart,
      leftHand: leftHand,
      rightLeg: rightLeg,
      leftLeg: leftLeg,
      rightHand: rightHand,
      rightEye:rightEye,
      leftEye: leftEye,
  );

  print("""
  hello:
  my name is: ${ali.name},${ali.family},
  i am ${ali.eyeCount} Eye,
  and ${ali.rightEye.work()}
  and ${ali.heart.isHeartWork()},
      """);
}
