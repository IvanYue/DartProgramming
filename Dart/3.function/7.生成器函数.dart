/**
 * Dart 支持生产器函数，它是用来产生集合值的函数。
 * 生成器可以是同步或者异步的。
 * 同步的生成器 为 迭代器 生成提供了语法糖
 * 异步的生成器 为 流 的生成提供了语法糖
 */


/**
 * 迭代器和迭代对象
 * 迭代器：允许对集合内容按照顺序进行迭代的对象。
 * 我们想简单生成结婚内容时，迭代器特别方便。
 * 
 * 迭代对象：支持通过迭代器进行迭代的集合
 * 可迭代对象必须有一个名为iterator的用于返回迭代器的getter。
 * 
 * 迭代器与可迭代对象的接口分别被类Iterator和Iterable实现。
 * 
 * 迭代器的生成很公式化，需要定义一个可迭代的集合类且必须为它定义一个返回（显式）iterator 的getter。
 * 自然，你需要定义一个具有 moveNext() 方法的迭代器类。
 * 
 */

class NaturalsIterable {
  var n;
  NaturalsIterable.to(this.n);
  get iterator => NaturalsIterator(n);
}

class NaturalsIterator{
  var n;
  var current = -1;
  NaturalsIterator(this.n);
  moveNext(){
    if (current < n) {
      current ++;
      return true;
    }
    return false;
  }
}

// naturalsTo(n) => NaturalsIterable.to(n);

main(List<String> args) {
  
  for (var i in naturalsTo1(20)){
    print(i);
  }
}

/**
 * 同步生成器
 * 为了减少迭代器而导致的重复代码，Dart支持同步生成器函数。
 * 可以省去实现最基本的迭代器也需要定义两个类的麻烦。
 */

/// 被调用时，次函数返回一个可迭代对象i，该对象中包含了迭代器j
/// 在迭代器的moveNet()第一次被调用时，此函数才开始执行。
/// 进入循环后，yield语句被执行，k被加1，而上一次k的值被追加到i，同时naturalsTo1（）的执行暂停。
/// 在下一次moveNext()被调用时，暂停yield的naturalsTo1（）将继续执行同时循环将重复。
/// 
/// 生成器函数 的函数体是在函数返回一个结果给调用者之后才开始执行的。
/// 
naturalsTo1(n) sync*{
  var k = 0;
  while (k<n) yield k++;
}

/**
 * 生成器中不能使用 return来返回值，因为这样没有任何意义，调用者已经获得了返回值，调用者已完成处理
 * 并从调用栈上消失。
 * 虽然生成器在返回结果给调用者之后才运行，但它的函数体育结果仍有关联且会进行交互。
 * 在同步生成器中，返回的结果始终是一个可迭代对象。
 * 生成器始终跟它生成的可迭代对象以及迭代器相关联。
 */

/**
 * Yield 语句，将对象追加到与之关联的可迭代对象，并暂停函数体的执行。
 * 只有通过moveNext()方法才能让函数体再次执行
 * 当yield暂停执行函数体时，moveNext()返回trun给调用者。当生成器终止时，moveNext()返回false、
 */