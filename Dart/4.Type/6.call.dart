
/**
 * call() 方法
 * 任意声明了特殊方法call()的类隐性的实现了Function。
 */

class MapFunction{
  MapFunction(this._map);
  Map<String,num> _map;

  num operator [](String k) => _map[k];
  void operator []=(String k ,num v) { _map[k] = v;}

  num call(String key) => _map[key];
}

/**
 * MapFunction 类的实例是通过给它的构造函数传递一个map对象来创建的。
 * call方法接受一个对象，并用它作为底层map的键来返回想要查找的结构。
 * 
 * Dart 不仅保存MapFunction被视为实现了Function，而且会被认为是String->num的子类。
 */