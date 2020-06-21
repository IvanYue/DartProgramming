import 'dart:math';

/**
 * 可变类型
 * 1.类型在语法层面是可选的
 * 2.类型对运行时语义没有影响
 * 
 * Dart能作为动态语言使用的关键因素：
 * 1.任意用动态语言编写的程序都应当可以用Dart实现。不会因为类型注解而使以前的代码不能运行
 * 2.Dart程序往往会同时包含使用了类型和没有使用类型的代码。意味着开发者不能假定类型安全，而且无法假定某个类型注解正确。
 * 在这种情况下，允许类型注解来承担语义可能会造成混乱及不稳定
 * 
 * 作为运行时决定类型的语言特性，我们考虑静态类型的方法是重载。
 * 重载是静态面向对象语言的常见特性。
 * 因为类型不影响语义，所以Dart 不支持基于类型的重载。
 */

//重载列子 根据参数自动选择方法，会有歧义这样的写法
class NotLegalDart {
  overload(List l)=>l.length;
  // overload(num n)=>n*2;
}

/**
 * 类型之旅
 * Dart 的变量可以与类型关联，类型也可以用来指示方法的返回类型。
 * 
 */

// 方法返回值的注释指示增加代码可读性，Dart运行时对此并不关心
sum(a,b) => a+b;
int sum1(a,b) => a+b;

var i;
var j = 0;
int ii ;

sum2(a,b) => a+b;
// Object sum3(Object a,Object b) => a + b;//类型错误：a has no method '+'

//类型注解无法影响语义。只是对有+方法的类型有意义
// 最好的处理方法就是不要加类型注释，这样它的类型就是dynamic
// 也可以显式的标注类型为dynamic。这样做毫无意义，而且是一种糟糕的风格
// 而使用 Object 表示，我们希望每个值都是有效的值。
main(List<String> args) {
  print(sum2(i,j));// noSuchMethodError
  print(sum2(ii,j)); //noSuchMethodError
  print(sum(3,4)); // 7
  print(sum('ab','surd'));//absurd
}


// 完全使用类型注解
// num 是 int 和double 的父类
class Point{
  num x,y;
  Point(this.x,this.y);
  Point scale(num factor) => Point(x*factor ,y*factor);
  Point operator +(Point p) => Point(x+p.x,y+p.y);

  static num distance(Point p1,Point p2){
    num dx = p1.x - p2.x;
    num dy = p1.y - p2.y;
    return sqrt(dx*dx + dy* dy);
  }
}