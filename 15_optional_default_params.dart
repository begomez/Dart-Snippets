import 'dart:math';

class Rectangle {
  
  //XXX: optional params are between {}
  //XXX: default val must be compile time constants, so use const when required
  Rectangle({this.width = 0, this.height = 0, this.origin = const Point(0, 0)});
  
  int width = -1;
  int height = -1;
  Point origin = null;
  
  @override
  String toString() => 'w: $width h: $height origin: $origin';
}

/*
 * Entry point
 */ 
void main() {
  var r1 = Rectangle(width: 100, height: 10, origin: Point(50, 50));
  var r2 = Rectangle();
  var r3 = Rectangle(height: 1000);
  
  print(r1);
  print(r2);
  print(r3);
}