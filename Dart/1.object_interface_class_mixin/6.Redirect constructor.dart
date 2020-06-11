
import 'dart:math';

main(List<String> args) {
  var p5 = Point4(1,2);
  print('Point4 ====> ${p5.rho},${p5.theta}'); // 1,2
  var p1 = Point1(1,2);
  print('Point1 ====> ${p1.rho},${p1.theta}'); // 2.23606797749979,0.4636476090008061

  var p = Point(1,2);
  print('Point ====> ${p.x},${p.y}'); // 1,null
}
/// 重定向构造函数
/// 目的：把执行重定向到另一个构造函数
/// 在重定向构造函数中，参数列表跟在一个冒号后面，并以 this.id() 的形式指定重定向到哪个构造函数。
/// 重定向构造函数：改变输出结果的同时，可以保留类原有的API，保留旧的构造函数。

class Point4{
  var rho,theta;
  Point4(this.rho,this.theta);
  get x => rho * cos(theta);
  set x(newX){
    rho = sqrt(newX * newX + y* y);
    theta = acos(newX/rho);
  }
  get y => rho * sin(theta);
  set y(newY){
    rho = sqrt(x * x + newY * newY);
    theta = asin(newY / rho);
  }
  scale(factor) => new Point4(rho * factor, theta);
  operator +(p) => new Point4(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }

}


class Point1{
  var rho,theta;
  Point1.polar(this.rho,this.theta);
  // 重定向到了 Point.polar 构造函数。
  Point1(a,b):this.polar(sqrt(a *a + b*b),atan(a/b));
  get x => rho * cos(theta);
  get y => rho * sin(theta);
  scale(factor) => new Point1(rho * factor, theta);
  operator + (p) => new Point1(x + p.x, y +p.y);
  static distance(p1,p2){
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(dx *dx + dy * dy);
  }
} 


class Point {
  num x, y;

  // Point类的主构造函数，也是一个重定向构造函数，你看它的函数体是空的
  // Point(this.x, this.y);

  // // alongXAxis函数被重定向到Point执行构造处理
  // Point.alongXAxis(num x) : this(x, 0);

  Point.alongXAxis(this.x);
  Point(a,b):this.alongXAxis(a);
}
