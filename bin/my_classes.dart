import 'package:my_classes/my_classes.dart' as my_classes;
import 'package:my_classes/my_points.dart' show Point,ImmutablePoint,Point1,Person,Impostor,Queue;
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

  //var p3=const ImmutablePoint(2,2);
  var a1=const ImmutablePoint(1,1);
  var b1=const ImmutablePoint(1,1);

  assert(identical(a1,b1));

  const pointAndLine={
    'point':[ImmutablePoint(0,0)],
    'line':[ImmutablePoint(1, 10),ImmutablePoint(-2,11)],

  };

  var b2=ImmutablePoint(1, 1);
  assert(!identical(a1,b2));
  //assert(identical(a1,b2));

  print('The type of a is ${a.runtimeType}');


  var point = Point1();
  point.x = 4; 
  assert(point.x == 4);
  assert(point.y == null); 

  String greetBob(Person person) => person.greet('Bob');

  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  assert(Queue.initialCapacity == 16);

  var a4=Point(2,2);
  var b4=Point(4,4);
  var distance1 =Point.distanceBetween(a4,b4);
  assert(2.8<distance&&distance<2.9);
  print(distance1);
}


