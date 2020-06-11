/// 接口 and 抽象函数 and 抽象类
main(List<String> args) {
  interface();
}

class S {
  var v;
  final f = 0;
  get g => 42;
  set s(x) => v = 2;
  m(a, b) => 91;
}

// class C extends S {
//   v() => 1; // 非法：方法 v() 重写 隐含的 getter 方法 v
//   f() => 2;
//   g() => 100;
// }
// /// 视图用方法或getter 重写 setter，或者用 setter 重写getter 在技术上是不可行的。
// class D extends S{
//   s(y) => 200; // 警告： D有方法 s 和setter s=
// }
// /// 重写方法的参数比被重写的方法需要更多参数时，也会报错
// class E extends S{
//   m(x,y,z) => 101; // 警告: 重写方法参数个数不一致
// }

/*
  抽象方法
    简单的声明一个方法，而不提供它的实现是有用的，这种方法被称为抽象方法。
    任何类的实例方法都可以是抽象的，不管它时getter、setter、操作符或者普通方法。
    声明一个 抽象方法 将告诉代码的阅读者，这个方法只在代码运行时才可用。
    就运行时而言，抽象方法根本不存在，毕竟没有实现，也无法实现。
    调用抽象方法就与调用一个不存在的方法一样。
*/

/*
  抽象类
  有一个抽象方法的类本身就是一个抽象类，抽象类的声明时通过在类名前加上前缀 abstract。
  抽象类不是被用来实例化的，毕竟它缺失部分实现。
  对 抽象类 实现会导致运行时错误。
*/
// 显式的声明为抽象类
abstract class Pair {
  get first;

  /// 抽象的getter 方法
  get second;
}

/// 只包含抽象方法的类在定义接口的时候很有用
/*
  接口
  接口的继承类似于类，
  类的隐含接口会继承父类的隐含接口，同时会继承父类实现的接口
  和类一样，接口可以重写父接口的实例方法；某些重写可能是非法的，例如重写方法与被重写方法参数数量不一致，或者getter 重写 setter方法等。

  一个接口可以有多个父接口，有时父接口可能会冲突，比如方法名一样，但是参数不一样，这时，互相冲突的方法没有一个会被继承。
  如果一个父类定义一个getter，而另一个父类也定义了同名的普通方法，那么结果也是一样的。都不会被继承。
*/

abstract class CartesianPoint {
  get x;
  get y;
}

abstract class PolarPoint {
  get rho;
  get theta;
}

/// Point 不是  CartesianPoint,PolarPoint 的子类，它没有继承任何成员。
/// implements 的目的是在接口间建立预期的关联，而不是共享实现。
class Point implements CartesianPoint, PolarPoint {
  get x => 2;
  get y => 3;
  get rho => 4;
  get theta => 5;
  Point(x, y, rho, theta);
}

/// is 不检查对象是否 为某个类或其子类的实例，而是检查对象的类是否明确的实现了某个接口(直接或者间接)
/// 我们并不关系对象是如何实现的，我们只在意它支持哪些接口。
interface() {
  var apoint = Point(1, 2, 3, 4);
  print(5 is int);// true
  print('x' is String);//true
  print([] is Point);//false
  print(apoint.toString() is String);//true
  print(new Point(1, 2, 3, 4) is String);//false
  print(apoint is CartesianPoint);//true
}

test() {
  // new Pair();/// 抽象类不能实例化
}
