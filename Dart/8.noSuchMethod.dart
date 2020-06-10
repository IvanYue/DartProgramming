/// noSuchMethod   ---  没有这样的方法


/// Dart 中的计算都是围绕对象方法的调用。如果调用了一个不存在的方法就会抛出 noSuchMethodError 错误。
/// 当调用一个实例中不存在的方法，Dart会调用当前对象的 noSuchMethod() 方法，
/// 当当前类没有实现 noSuchMethod方法时候，就会去调用 Object 的 noSUchMethod() 方法，
/// Object 的 noSuchMethod() 方法就是 抛出 noSuchMethodError 错误。
/// 这样我们就可以重写 noSuchMethod(),实现我们的业务。 

/// Object 的接口设计的很小，可以动手拦截处理。
 
/// 编写忽略目标类型的通用代理的能力，是Dart这种可选类型语言的灵活性的完美体现。
/// 这种灵活性 是 强制类型 的语言无法提供的。 

/// 后续会完善
class Proxy {
  final forwardee;
  Proxy(this.forwardee);
  @override
  /// invocation 原始调用
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
    // return runMethod(forwardee,invocation);// 在反射章节会实现
  }


}