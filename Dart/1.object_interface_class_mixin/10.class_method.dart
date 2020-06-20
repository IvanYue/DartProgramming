import 'dart:math';

main(List<String> args) {
  
  // 调用类方法
  Point.distance(100, 200);
  /// 调用不存在的类方法，会报 noSuchMethodError
  /// Dart 在这种情况下回给出静态警告，但代码仍然可以编译并运行。
  /// 这种行为提供了动态系统的灵活性，同时没有失去常规系统类型的严谨性。
  // Point.sss();
}


/// 类方法
/// 类方法 是不依赖于个体实例的方法。
/// 通过变量引入的 accessor 都是类方法，我们可以称之为 类getter方法 和 类setter方法。
/// 除了自动引入的 类accessor，也可以显式的定义这些 accessor。
/// 也可以把普通方法定义为类方法。 
/// 
 
/// 类方法在声明他们的类中可用
/// 类方法 中使用 this 将导致编译错误，因为一个类方法不特定于任何实例。所有this在其内部是未定义的。
/// 类变量(static)不会被继承
class Point{
  var rho,theta;
  Point(this.rho,this.theta);
  x() => rho * cos(theta); /// 隐含 getter 方法
  y() => rho * sin(theta);
  scale(factor) => new Point(rho * factor, theta);
  operator +(p) => new Point(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }
  
}


class ExtendedPoint extends Point{

  var orgin = Point(0,0);
  // get distanceFromOrgin => distance(orgin, this); // NoSuchMethodError！

  //类方法 永远不能被继承，所以声明一个抽象的类方法就没有意义了。而且语法上也是非法的。
  get distanceFromOrgin => Point.distance(orgin, this);
  ExtendedPoint(this.orgin) : super(0, 0);
}