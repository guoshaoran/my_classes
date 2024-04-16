import 'package:my_classes/my_classes.dart' as my_classes;
import 'package:my_classes/my_points.dart' show Point;
void main(List<String> arguments) {
  // ignore: prefer_typing_uninitialized_variables
  var p;
  var a=p?.y;
  
  var p1=Point(2,2);
  //var p2=Point.fromJson({'x':1,'y':2});

  double distance = p1.distanceTo(Point(4, 4));
  print('Hello world: ${my_classes.calculate()}!');
  print('$distance');
  print('$a');
}
