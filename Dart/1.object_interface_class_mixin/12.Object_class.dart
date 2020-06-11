import 'dart:js';

main(List<String> args) {
  
}



/// Object 类的接口非常的小。
/// 所有对象共享的接口只有 操作符==  、hashCode、toString()、noSuchMethod() 、 runtimeType 五个方法
/// 最常用的是 toSting() 方法，返回一个对象的字符串，默认版本通常会打印出类似 “An Instance of C” 的字符串。C就是对象的类名。
/// 通常会重写 toSting() 方法，使得它更有意义。

// class Object{
//   bool operator == (another){...}
//   int get hashCode{...}
//   String toString(){}
//   noSuchMethod(Invocation im){...}
//   Type get runtimeType{...}
// }

/// Dart 代码能够被 类型注解修饰，Dart核心库几乎都是这样的。

// 把这些方法的函数体都省略了，就会发现更接近实际的代码
class Object{
  bool operator == (other) => identical(this,other);
  // external 表示它们的实现实在其他地方，声明代码的实现来自于外部
  /**
   * external 外部代码有多种提供方式：
   * 1.通过作为底层实现基础的外部函数接口(这里就是)
   * 2.可能动态的生成实现
  */
  external int get hashCode;
  external String toString();
  external noSuchMethod(Invocation im);
  external Type get runtimeType;
}
