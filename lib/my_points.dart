import 'dart:math';

class Point {
  
 
  double x;
  double y;
 // double z=0;//z=0
 

  Point(this.x, this.y);

  factory Point.fromJson(Map<String, dynamic> json) {
    double x = json['x'];
    double y = json['y'];
    return Point(x, y);
  }

  static double distanceBetween(Point a,Point b){
    var dx=a.x-b.x;
    var dy=a.y-b.y;
    return sqrt(dx*dx+dy*dy);
  }

  double distanceTo(Point other) {

    double dx = x - other.x;
    double dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }


  
}
class ImmutablePoint {
  const ImmutablePoint(int i, int j);
}

class Point1{
   double? x;
   double? y;//null
}

class ProfileMark{
  final String name;
  final DateTime start=DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed():name='';
}
//接口
class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

class Queue{
  static const initialCapacity=16;
}