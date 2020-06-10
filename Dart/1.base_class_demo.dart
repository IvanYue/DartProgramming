library points;  /// 声明一个名为points的库
import 'dart:math'; /// 导入dart:math 库


main(List<String> args) {
    // test1();
    test2();
}

///  accessor:存取器



/// class
 class Point {
  var x, y;
  Point(a, b) {
    x = a;
    y = b;
  }
}


class Point1 {
  var x, y;

  /// 语法糖 可以这样构造
  Point1(this.x, this.y);
  scale(factor) => Point(x * factor, y * factor);
  operator+(p) => Point1(x + p.x, y + p.y);

  /// static 表示不针对某个特定实例
  static distance(p1,p2){
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(dx * dx + dy *dy);
  }

}


 void test1() {
    var orgin = Point1(3, 4);
    var aPoint = Point1(1, 2);
    var anotherPoint = Point1(5, 6);

    print(orgin.x);

    print(orgin.scale(2).x);

    print(aPoint.y + anotherPoint.y);
  }

class Point2{
  var rho,theta;
  Point2(this.rho,this.theta);
  x() => rho * cos(theta); /// 隐含 getter 方法
  y() => rho * sin(theta);
  scale(factor) => new Point2(rho * factor, theta);
  operator +(p) => new Point2(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }

}

void test2(){
  var myPoint = Point2(2, 3);
  /// 这里是x() 不是 x
  /// x 是一个 Closure: () => dynamic from Function 'x':.
  print(myPoint.x());
}



/// getter：是一个不带参数的特殊方法，可以在不提供参数列表的情况下直接调用
/// getter 方法引入是通过在方法名前加 get 前缀
/// getter 方法不需要参数列表，甚至是空的参数列表
/// getter 的调用语法和变量的访问没有区别
/// dart 中所有的变量访问都调用了getter，所以编译器并不知道两者的区别
/// 每一个实例变量始终有一个与之关联的getter，由Dart编译器提供
class Point3{
  var rho,theta;
  Point3(this.rho,this.theta);
  get x => rho * cos(theta);
  get y => rho * sin(theta);
  scale(factor) => new Point2(rho * factor, theta);
  operator +(p) => new Point2(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }

}


/// 赋值操作 需要 setter 方法
/// setter 方法名前添加 set 前缀，并只接受一个参数
/// setter 的调用与传统的变量赋值是一样的。
/// 如果一个实例的变量是可变的，则一个setter将自动为它定义，所有实例变零的赋值实际上都是setter的调用
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
  scale(factor) => new Point2(rho * factor, theta);
  operator +(p) => new Point2(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }

}



class Point5{
  /// 输入 长度 宽度
  var rho,theta;
  /// 转换成直角坐标
  Point5(a,b){
    rho = sqrt(a *a + b* b);
    theta = atan(a/b); 
  }
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
  scale(factor) => new Point2(rho * factor, theta);
  operator +(p) => new Point2(x() + p.x(), y() + p.y());
  static distance(p1,p2){
    var dx = p1.x() - p2.x();
    var dy = p1.y() - p2.y();
    return sqrt(dx * dx + dy * dy);
  }

}