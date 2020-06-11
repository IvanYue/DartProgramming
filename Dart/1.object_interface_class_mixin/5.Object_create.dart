/// 对象的创建
import 'dart:core';

import 'dart:math';

main(List<String> args) {}

class Box {
  var contents;
}

class Box1 {
  var contents;
  Box1();
}

class Box2 {
  var contents;
  Box2() {}
}
/*
  评估一个实例创建表达式的第一步就是评估构造函数的参数。
*/

/// 最初的x,y 是被系统设置为null的，确保用户的代码永远不会遇到未初始化的内存，
class Point {
  var x, y;
  Point(a, b) {
    x = a;
    y = b;
  }
}
/// Point 类的 x,y 和 Point3D 的z 初始值都是null
/// 在 Point3D 的构造函数体前，不得不执行 Point 的构造函数，否则 Point 的 x,y 将不会被正确初始化。
/// Dart 编译器 不能确定应该传递怎样的参数 给父 构造器。所有需要调用一个明确的父构造器函数来指引我们。
class Point3D extends Point {
  var z;
  /// super 代表 父类名称
  /// 在 Point3D 执行自身构造函数时，先调用了父类构造器函数
  Point3D(a, b, c) : super(a, b) {
    z = c;
  }
}

/// 计算极坐标
/// 因为需要访问构造函数的参数，所以我们不能再声明这些事例变量时就 对他们进行初始化。
/// 因为 rho和theta 都是通过x,y 计算得来的。所以这里不能用this.rho 这样的初始化方式。
/// 也不能在构造函数中，给这些值赋值，因为他们没有定义setter
/* 
  dart 是通过 初始化列表 解决这个问题的
  目的就是在普通代码运行前对实例变量进行初始化。
*/ 
class Point1{
  final rho,theta;
  // 初始化列表是从 Point1(a,b): 以后到结尾。
  /*
    两个初始化操作，一个是 rho 一个是theta
    初始化操作 从左往右执行，用 逗号(,)分隔
    初始化列表 除了初始化实例变量外，还可以包含一个父构造器。Point3D中的 supe(a,b)
    如果没有调用 父构造器，那么就会有一个隐式的 super() 将会被添加到 初始化列表 的尾部
   */
  Point1(a,b):rho = sqrt(a *a + b*b),theta = atan(a/b);
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

/**
 * 以Point3D 为列，一个完整的实例创建过程就是：
 *  1. 初始化 Point3D 时先初始化 Point
 *  2. 初始化 Point 时候先初始化 Object
 *  3，运行 Object 构造函数
 *  4  运行 Point 构造函数
 *  5. 运行 Point3D 构造函数
 *   
 *  Point3D -> Point -> Object -> Object构造函数 -> Point构造函数 -> Point3D构造函数
 */

test() {
  /// 实例化之前，x,y 的只是null
  var p = Point(1, 2);
  /**
   * 创建一个Point3D 实例，从计算实际参数开始，这里的参数就是 7.8.9，然后Point3D构造函数被调用
   * 下一步是分配一个新的Point3D实例。所有的实例变量都是null，然后执行Point3D的 初始化列表。
   * 这导致父类执行初始化，进而导致Point的初始化列表被执行，并将使实例变量x,y的值被设置。
   * 然后执行隐含添加在Point类初始化列表尾部的父类初始化话操作。即调用 Object 的初始化列表，它什么都没有做，甚至都没有调用父类进行初始化。
   * 
   * 执行完父类链的初始化列表后，下一步就是执行 构造函数 的函数体。
   * 
   * 一个构造函数的函数体在开始前总是隐式的运行父类的构造函数体。 
   * 传递给父构造函数的参数跟初始化列表中调用父类构造函数的参数相同，它们不会重新计算
   * 
   */
  var p3D = Point3D(7, 8, 9);
}
