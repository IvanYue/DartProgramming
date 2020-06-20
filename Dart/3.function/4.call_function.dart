/**
 * 函数的调用
 * 级联：Dart 支持使用双点运算符进行方法级联。当对对象进行一系列操作的时候。
 */

class NameArgumnetsClass {
  var street;
  var name;
  var number;
  var city;
  var zip;
  var country;
}

addressLetter({name: '', street: '', number, city, zip, country}) {
  var addr = NameArgumnetsClass();
  addr.street = street;
  addr.name = name;
  addr.number = number;
  addr.city = city;
  addr.zip = zip;
  addr.country = country;
  return addr;
}

main(List<String> args) {
  print('hello'.length.toString()); //5
  print('hello'..length.toString()); //hello

  NameArgumnetsClass()
    ..city = 'c'
    ..country = 'a'
    ..name = 'b';
}

/**
 * 级联可以节省代码量，而且在没有进行预先规划的情况下，也能创造出流畅的API。
 * 没有级联的话，为了将调用链接起来，所有方法必须设计为总是返回当前对象。
 * 有了级联，我们可以达成同样的链接效果，而不用理会API各个方法的返回值。
 * 
 * 将级联代码格式化以使它具有良好的可读性很重要，不应该滥用级联。
 * 
 * 1.级联对构建所谓建造者模式API是非常有用的。即一个对象描述符被分布创建，在经历一些列级联后，
 * 对象在构建结束时才被创建
 * 2.当我们执行某个对象的方法时，我们需要的返回值是对象本身，但方法返回值却是其他值。
 */

func() {
  var sprtedColors = ['red', 'green', 'blue', 'pink']
      .sublist(1, 3)
      .sort(); // 返回值是null，因为sort函数返回值是void

  var colors = ['red', 'green', 'blue', 'pink'].sublist(1, 3);
  colors.sort();

  var sortedColors = ['red', 'green', 'blue', 'pink'].sublist(1, 3)..sort();//直接使级联
}

/**
 * 赋值：使用= ，setter语法糖
 */
/**
 * 使用运算符
 * Dart支持自定义运算符。通过operator前缀修饰
 * Dart自定义运算符其实是有着特殊名称与特殊语法的实例方法。
 */