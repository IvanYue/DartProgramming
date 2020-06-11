
main(List<String> args) {
  
}

/// mixin
/// 有时单继承局限性很大。
/// 有时需要一个由多个小部件组合而成的符合部件。将这个复合部件看成集合，这个集合有很多公共功能。
/// 多继承得不偿失，Dart 使用基于mixin的继承。
/// 可以避免复制粘贴代码所导致的各种问题：维护，类型检查，法律问题等。


abstract class Collection {
  forEach(f);// 用函数f对集合中的每个元素进行调用
  where(f);
  map(f);
}

/// collection 和 父类的差异，我们把这个差异叫作 minxin
/// 每个类都有一个mixin。这个mixin实在类主题中定义的特定功能。
/// 可以把mixin看做一个函数，接受一个父类，并返回一个新的拥有特定主体的子类。

// mixinCollection（s）{
//   return class Collection extends S{
//     forEach(f);// 用函数f对集合中的每个元素进行调用
//     where(f);
//     map(f);
//   }
// } 

/**
 * 每次用某个特定的类调用这个函数，都会产生一个新的子类。
 * 我们把mixin应用看作用一个mixin与一个父类来派生一个新类。
 */
class Point {
  Point();
}
/**
 * CompoundWidget 的 父类是 Point 和 Collection,
 * 即 Collection 与 Widget 在 mixin 之后产生了一个新的匿名类，被CompoundWidget 所继承。
 * mixin 的类可以显示声明构造函数。
 */
 abstract class  CompoundWidget extends Point with Collection {
  var x;
  CompoundWidget(this.x){}
}

/// mixin 例子：表达式问题：它使用的实例例子是一个表达式语言
/// 抽象语法树
///  Expression -> Expression + Expression | Expression - Expression|Number

class Expression{}
class Addition extends Expression{
  var operand1,operand2;
}
class Subtraction extends Expression{
  var operand1,operand2;
}

class Number extends Expression{
  int val;
}




















