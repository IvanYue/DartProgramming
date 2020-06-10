library points;/// 声明一个名为points的库


import 'dart:math';

/// 导入dart:math 库

main(List<String> args) {
  Box.numberOfInstances == 0 ? print('No boxes yet') : print('we have boxes');
  test();
}

/// 类变量：不论创建多少个实例，都只有一份类变量的副本
/// 类变量 从不直接引用，所有对它们的访问都是通过 accessor
/// 在声明类中，可以直接通过名称访问
/// 在声明类外，可以通过类名访问
/// 类变量 通常被称为静态变量。但是 静态变量 又包含了 ‘类变量’和‘顶层变量’，为了避免混淆，还是坚持使用 类变量
/// 类变量 是延迟初始化的，在 getter 第一次调用时 才执行初始化，即 ‘第一次尝试读取它时’。
/// 和其他变量一样，如果 类变量 没有被初始化，默认值就是 null
/* 
  类变量 的 延迟初始化 有助于避免一个问题:====> 过量的前期初始化导致应用程序启动缓慢
      。
  然而 延迟初始化  也会导致意外的行为：=======> 在调试过程中可能会掉之不容易发现错误，可能会先去寻找变量的值，那样就触发了变量的初始化。
  
  所以开发者需要密切关注 延迟初始化 带来的影响。
 */
class Box {
  /// 添加一个类变量来跟踪有多少个实例被创建
  static var numberOfInstances = 0;
  Box() {
    /// 每当类构造函数Box() 运行时，它就会增加已创建箱子的数量
    numberOfInstances += 1;
  }
}

class Cat{}
class DeadCat extends Cat{}
class LiveCat extends Cat{
  LiveCat(){print("i'm a live");}
}
/// 这里使用的是顶层变量，但是和类变量的行为是一样的。
var shcrodingers = new LiveCat();

void test() {
  shcrodingers  = new DeadCat() as LiveCat;
}
