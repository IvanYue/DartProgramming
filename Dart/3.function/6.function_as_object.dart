/**
 * 函数作为对象
 * Dart是一门纯面向对象的语言，运行时的所有值都是对象，包括函数。
 * 除了call()方法，函数也支持所有在Object中声明的方法。
 * 
 * 
 * 每次调用函数都可能会分配一个新的函数对象。局部函数的声明每次都被新的动态作用域包含是，就会引入一个新的对象。
 * 
 * 顶层或静态的函数声明可以被命名，且它们的名称始终表示同一个对象。
 * 
 * Dart 对通过对象属性获取的闭包给予了特殊对待。
 * 如果 o1和o2计算得到同一个对象(o1 = o2)，那么Dart会确保对于给定的标识符m，如果o1是合法的，那么o1.m=o2.m。
 */

/// 无法确定两个函数的运行时类型是否相等。但是他们都实现了Function。
/// 相同的函数具有相同的运行时类型

f(x) {return  (x)=>x;}

g(){
  h()=>42;
  h.runtimeType is Function;//true
  h.runtimeType == (()=>42).runtimeType; // false
  g.runtimeType == h.runtimeType; // false
  (()=>42).runtimeType == (()=>42).runtimeType; // false

  h.runtimeType ==h.runtimeType; //true
  var x = (()=>42);
  x.runtimeType == x.runtimeType;//true
}

main(List<String> args) {
  f.runtimeType is Function; //ture
  f(3).runtimeType is Function; //true
  g.runtimeType is Function; //true
  f(2).runtimeType == f.runtimeType;//不一定
  f.runtimeType == g.runtimeType; // 不一定

  f.runtimeType == f.runtimeType;//true
  g.runtimeType == g.runtimeType;//true
}




