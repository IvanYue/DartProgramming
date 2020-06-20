
main(List<String> args) {
  
}

/// mixin:当我们想要在不共享相同类层次结构的多个类之间共享 行为 时，或者在超类中实现此类 行为 没有意义时，Mixins非常有用。
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
/// 抽象语法树 AST
///  Expression -> Expression + Expression | Expression - Expression|Number

class Expression{}
class Addition extends Expression{
  var operand1,operand2;
  get eval => operand1.eval + operand2.eval;
}
class Subtraction extends Expression{
  var operand1,operand2;
  get eval => operand1.eval + operand2.eval;
}

class Number extends Expression{
  int val;
  get eval => val;
}
/// 添加一个功能：转化为字符串
/// 方法一：当想把这些 表达式转化为字符串时，就需要添加另一个方法到原先的层次结构中
/// 类似功能的函数有无数个，类就会变的很难维护与使用。
/// 而且并不是所有想添加新功能的人都可以访问到原始源代码
/// 方法二：或者把求值器定义为一个AST类外部的一个函数，但这样就必须对传递过来的表达式进行 类型检查
/// 然后执行相应的操作。这样做烦琐切效率低下，所以一般会使用  访问者模式 来代替。
/// 这样的代码结构有个双重问题：添加功能简单，但是添加新类型就很难。



/**
 * 面向对象：添加类容易，添加功能却是侵入性的。
 * 函数式风格：添加功能容易，添加类却是侵入性的。
 * 所以，真正需要的是一种把各个类和功能独立的添加，而没有侵入性。使用mixin就很好的解决了这个问题。
 */

/* 
  Dart 支持 基于 mixin 的继承，每个类都引入了一个mixin，它捕获了类本身对类层次结构所做的独特贡献。
  mixin 使类的代码以模块化方式重用，而不依赖于它的类层次结构中的位置。
*/













