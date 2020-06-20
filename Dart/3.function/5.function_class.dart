import '../1.object_interface_class_mixin/8.noSuchMethod.dart';

/**
 * Function 类
 * Function 是代表所有函数的公共顶层接口。
 * Function 没有声明任何实例方法。只有一个类方法apply()。此方法接受一个函数和一个参数列表，
 * 并使用参数列表去调用传入的函数。
 */

// apply()的签名是：提供了一种动态确定的参数列表来调用函数的机制。
// 通过它我们可以处理在编译时参数列表数量不确定的情况
class FunctionClass {
  static apply(Function function, List positionalArguments,
      [Map<Symbol, dynamic> namedArguments]) {}
}

/**
 * 模拟函数
 * 面向对象编程的原则：对象的行为而不是对象的实现。理想情况下，任意对象都应该能模仿其他对象
 * 
 * 函数的执行会转成调用一个名为 call（）的特殊方法，r
 * 
 * 任何声明了call（）方法的类都会被认为隐含 Function类。
 * 注意：Function 没有声明call()方法。因为没有特定的函数签名来声明。
 * call()可以有不同个数的参数，而且可能会有或者没有拥有不同默认值的可选参数(位置参数或者命名参数)
 * 所以，Function真的没有通用的call()可以声明。所以Dart在语言层面对call方法进行了特殊处理。
*/

//因为Proxy没有call方法，所以，noSUchMethod()被执行,将调用发送到代理目标。此代理目标有一个函数，它有自己的call()方法。
main(List<String> args) {
  var p = Proxy((x) => x * 2);
  //p ===> p.call()
  p;
}
