/**
 * Dart程序是由被称为库 的模块化单元组成的。
 * 一个库由多个顶层声明组成，这些声明可以是函数，变量以及类型
 */

// 实现栈的库
library stack1;
final _contents = [];//顶层变量延迟初始化 --- 在某个访问它的方法被调用的时候才被设置为[]
get isEmpty => _contents.isEmpty;
get top => isEmpty?throw  'Cannot get top of empty stack':_contents.last;
get pop => isEmpty? throw 'Cannot pop empty stack':_contents.removeLast();

push(e){
  _contents.add(e);
  return e;
}
/**
 * 顶层变量和类变量一样是延迟初始化的。在他们的getter第一次被调用的时候才初始化。
 * 
 * 顶层变量和类变量一样 都被称为 静态变量。
 * 
 * 类变量作用域是当前类，子类也不能访问
 * 顶层变量（库变量）的作用域 覆盖了声明它们的整个库，通常由多个类与函数构成。
 * 
 * 顶层变量与类变量一样都可以用final修饰
 * 1.没有setter方法
 * 2.必须在声明时就初始化。
 * 
 * 也可以把 静态变量(库变量和类变量)声明为常量。这样的话它们只能被赋予一个编译时常量且自身被视为不可变
 */

/// 顶层函数（库方法）的作用域和顶层变量一样。整个库中都是可用的。
/// 
/// 还可以声明顶层类，在Dart中的类都是顶层类，因为Dart不支持嵌套类