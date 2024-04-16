import 'dart:math';

class Point {
  double x;
  double y;

  Point(this.x, this.y);

  factory Point.fromJson(Map<String, dynamic> json) {
    double x = json['x'];
    double y = json['y'];
    return Point(x, y);
  }

  double distanceTo(Point other) {
    double dx = x - other.x;
    double dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}