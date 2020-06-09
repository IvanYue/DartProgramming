///identical()方法 ，可以检查两个对象是否相同
import 'dart:core'; 
main(List<String> args) {
 test();
}

/// final 变量：变量前面加 final ，表示他们在初始化后不能再修改。
/// final 字段 有 gett 但没有 setter 。
/// final 变量必须在声明时就初始化。
/// final实例变量 必须在实例方法运行前进行初始化。
/*
  给 final实例变量赋值会导致一个 ‘NoSuchMethodError’ 的错误。
  因为 赋值操作只是调用 sette 语法糖，而 final 实例变量所对应的 setter 方法未定义。
  单独声明一个setter方法是可以的，它可以被调用。然而这对实例变量的值没有任何影响，在final变量初始化后。它的值就无法改变了。
*/ 
class FinalVar {
  /// 方法一：声明变量时就进行初始化
  
  final orgin = FinalVar();
}
class FinalVar1 {
  /// 不一定总是很方便，不通构造函数，设置方式可能不一样
  /// 例如：这个变量可能取决于构造函数的参数

  final x,y;

  FinalVar1(this.x,this.y);
}

class FinalVar2 {
  /// 不一定总是很方便，不通构造函数，设置方式可能不一样
  /// 例如：这个变量可能取决于构造函数的参数

  final x,y;

  FinalVar2(this.x,this.y);
  /// 重写 == 必须要谨慎
  /// 决定如何此时有意义的相等 
  operator == (p) => x == p.x && y == p.y;
}



/// ==
/// 所有的Dart 对象都支持 一个名为 hashCode 的 getter 的方法
/// 对象的相等和 hashCode 是相互关联的。
/// 如果两个对象相等，那么他们的哈希码也应该相等，代码的实现就必须小心维护这个属性。
test(){
  var f1 = FinalVar1(1,2);
  var f2 = FinalVar1(1, 2);
  print(f1 == f2); // false

  var f11 = FinalVar2(1, 2);
  var f22 = FinalVar2(1,2);
  print(f11 == f22); //  true

  ///identical()方法 ，可以检查两个对象是否相同
  
  print(identical(f1,f2));// false
  print(identical(f1,f1));//  true
  print(identical(f11,f22));// false
  print(identical(f22,f22));//  true
} 


class FinalVar3 {

  final x,y;

  FinalVar3(this.x,this.y);
  /// 重写 == 必须要谨慎
  /// 决定如何此时有意义的相等 
  bool operator == (other) => identical(this, other);
}

/// 期望实现 自反性 a == a
/// 可传递性 a==b && b==c 意味着 a==c
/// 互换性  a==b 意味着 b==c
class FinalVar4{
 
  final x,y;

  FinalVar4(this.x,this.y);
  /// 重写 == 必须要谨慎，因为这样会逐步破坏整个系统的相等属性。
  /// 决定如何此时有意义的相等 
   operator == (x) => true;
}