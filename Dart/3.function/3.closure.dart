/**
 * 闭包
 * 函数可以定义在表达式内部，它们被称为函数字面量。或者笼统的称为闭包。
 * 
 * 与函数声明不同，闭包没有名称，但有参数列表和函数体。
 * 闭包的好处：在于它们作为大型表达式的一部分。
 */


main(List<String> args) {
  (x)=>x;// 另一个identity函数
  (x) {return x;}; //又一个
  (x,[step =1])=>x+step;//可选参数闭包
  (a,b)=> a+b; // 两个必填参数的闭包

  // 计算列表元素之和
  // 1.for循环
  // 2.dart
  sum(nums)=>nums.reduce((a,b)=>a+b);
  /**
   * reduce()会接收一个combiner的二元函数作为参数。
   * 当reduce被执行时，会遍历当前对象。
   * 处理开始时，前两个元素将传递给combiner执行。
   * 在后续的每次迭代中，combiner被重新执行，上次combiner的执行结果会作为第一个参数，而下一个元素将作为第二个参数。
   * 如果combiner把它的参数相加，则最终效果就是把当前对象的前两个元素相加，然后加上第三个元素。
   * 以此类推获得总和。
   */

  sum1(nums){//不好的代码风格
    plus(a,b)=>a+b;
    nums.reduce(plus);
  }
  // 大于3的数
  [1,2,3,11,22,33].where((num)=>num>3);
}






























































