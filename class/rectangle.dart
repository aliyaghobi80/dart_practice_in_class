
class Rectangle {
  int _width;
  int _height;

  Rectangle(this._height, this._width);

  int get height=>_height;

   set width(width){
    _width=width;
  }

  //مساحت
  void area() {
      print(_width*height);
  }
  //محیط
  void perimeter(){
    print((_width+_height) * 2 );
  }
}

class Square{
  int _side;


  Square(int side,):_side=side;

  set setSide(int side){
    _side=side;
  }

  int get getSide=> _side;
  //مساحت
  void area(){
  print(_side * _side);
  }
  //محیط
  void perimeter(){
  print(_side *4);
  }
}

class Circle{

  double radius;
 static const double p = 3.14;
  Circle(this.radius);

  //مساحت
  void area(){
    print(radius*radius*p);
  }
  //محیط
  void perimeter(){
    print((p*radius)*(p*radius));
  }
}
class Oval{

  double lowRadius;
  double highRadius;

 static const double p = 3.14;
  Oval(this.lowRadius,this.highRadius);

  //مساحت
  void area(){
    print((lowRadius*highRadius)*p);
  }
  //محیط
  void perimeter(){
    double avrage=(lowRadius*highRadius)/2;
    print( avrage * p * 2);
  }
}

class Triangle{
  double base;
  double height;
  int leftSide;
  int rightSide;
  int bottomSide;
  Triangle(this.base,this.height,this.leftSide,this.rightSide,this.bottomSide);

  void area(){
 print((bottomSide * height )/2);
  }
 void perimeter(){
  print(leftSide+rightSide+bottomSide);
 }
}


