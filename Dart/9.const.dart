main(List<String> args) {
  
  /// 常量对象 const 修饰 
  const origin = const Point(1, 2);
  print('${origin.x},${origin.y}');
}

/// 常量对象与字段
/// 有些对象是在编译的时候就可以计算常量 const
/// Dart 还支持用户定义的常量对象 const
/// 
/// const 表达式也是调用构造函数的。但是 该构造函数也必须是常量的构造函数，而且参数也必须是常量。
/// Dart 要求常量构造函数的参数 必须是 数字，布尔值或者字符串。

/// 常量的值可以提前计算，只需一次，无须重新计算。
/// Dart 中的常量是规范化的，一个给定的值只会产生一份常量
class Point{
  final x,y;
  /// 常量构造函数不能有函数体。
  /// 可以有一个构造函数，前提是只计算常量
  const Point(this.x,this.y);
  // 可以有这样的构造函数，但是如果使用了像 sqrt() 这样的结果不是常量的函数，就不能将这个构造函数定义为 常量
  // 不能用const调用
  Point.polar(this.x,this.y);
} 