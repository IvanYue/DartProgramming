/**
 * 泛型：Dart的类可以是泛化的。，也就是说，它们能通过类型进行参数设置。
 * 
 * 泛型类可以指定实际的类型参数===> 参数化类型
 * 
 * 为泛型提供类型参数不是必须的，当不提供的时候，类型dynamic会被隐性的使用，代替所有缺失的类型参数。
 */

// 参数化类型
List<String > l;
Map<String,int> m;

// 不表明类型
List l1;
Map m1;
/**
 * 相当于
 */
List<dynamic> l2;
Map<dynamic,dynamic> m2;


class Fruit{
  var color;
  Fruit(this.color);
}

class Apple extends Fruit{
  Apple():super('Apple');
}

class Orange extends Fruit{
  Orange():super('Orange');
}


printColors(List<Fruit> fruits){
  for (Fruit f in fruits) {
    print(f.color);
  }
}


/**
 * 协变：泛型的协变子类型是存在问题的。
 * 如果G是一个由n个类型参数的泛型类，而S1 是 T1的子类型且 i在1..n中，那么
 * G<S1,...,Sn><:G<T1,...,Tn>,其中T<:S表示T是S的子类型。
 */

addApple(List<Fruit> firuts){
  firuts[firuts.length -1] = Apple();
}



main(List<String> args) {
  List<Apple> apples = <Apple>[];
  List<Orange> oranges = <Orange>[];
  apples.add(Apple());
  oranges..add(Orange())
         ..add(Orange());

  printColors(apples);
  printColors(oranges);

  //oragnes 里面包含了apple
  addApple(oranges);
}