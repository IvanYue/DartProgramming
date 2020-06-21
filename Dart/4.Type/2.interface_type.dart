/**
 * 接口类型
 * Dart的类型是接口类型。他们给对象定义了一组可用的方法.
 * Dart 并没有声明接口的语法，接口是通过类声明引入的。每个类都引入了一个隐性接口，其签名是基于类的成员。
 * 对于传统接口声明的需求，我们定义一个纯抽象类就可以轻松完成。
 * 
 * 任何类都可以实现一个接口，即使该接口与类完全没有关联。这也是Dart不需要声明接口声明语法的原因。
 */

abstract class Pair {
  get first;
  get second;
}

//声明一个类，它实现了Pair所定义的接口
// 实现了Pair接口，并不是继承了Pair接口
// implements 后面可以跟多个接口
// 类不会继承 implements 子句内任何接口的实现。
// implements 所做的是使类与它所列出的接口建立明确的子类关系。
class ArrayPair implements Pair{
  var _rep;
  ArrayPair(a,b){
    _rep = [a,b];
  }
  get first => _rep[0];
  get second => _rep[1];
}

Pair reversePair(Pair p)=> ArrayPair(p.second,p.first);
main(List<String> args) {
  reversePair(ArrayPair(3,4));
}
/**
 * 当一个对象从一个变量传递到另一个变量时，会触发类型检查
 * 1.执行赋值操作
 * 2.传递实际参数给函数
 * 3，函数返回结果
 */

/**
 * implements 子句中列出的每个接口都被认为是当前类的直接父接口
 * Pair是ArrayPair 的直接父接口
 * 类的父类也被认为是类的直接接口之一
 */

class Monster {
  //功能
}
class Vampire extends Monster{
  get _bloodType => 'o';
}
// 子类和父类可以相互赋值
Map<String,Monster> mosters = {
  'Frankenstein':Monster(),
  'Godzilla':Monster(),
  'Dracula':Vampire()
};
Vampire vamp = mosters['Dracula'];
/**
 * Dart 的类型准则是弱类型
 */