/**
 * Dart类型系统的非严格性
 * 1.泛型的协变
 * 2.可赋值性规则中的类型向下转换
 * 3.函数类型的可赋值性
 * 4.隐私与接口类型的相互作用
 * 
 * 函数类型对返回类型协变，而对参数类型逆变
 */




library stack4;
import 'stack3.dart' as stack show clone,Stack3;

class Stack4 implements stack.Stack3{
  final List _array =[];
  get isEmpty => _array.isEmpty;
  get top => isEmpty?throw'Cannot get top of empty stack':_array.last;

  get pop=> isEmpty?throw 'Cannot pop empty stack':_array.removeLast();
  push(e){
    _array.add(e);
    return e;
  }

}

main(List<String> args) {
  stack.clone(Stack4());
}
  
/**
 * Dart 并不是围绕抽象数据类型的概念设计的，而是围绕接口的概念设计的。
 * Dart 中的类型从不表示某种特定的实现类型。相反，它表示这种类型的接口。
 */