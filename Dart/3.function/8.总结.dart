/**
 * 与其他运行时的值一样，Dart函数时对象。
 * Dart中的函数可以声明为接收位置或命名参数。
 * 
 * 位置参数可以是必填和选填的
 * 命名参数都是可选的
 * 
 * 函数始终遵循 词法作用域 且对周边环境是封闭的。
 * 因为return的语义，Dart的函数不太适合用来实现用户自定义的控制结构。
 * 
 * Dart函数即能作为类的方法也能独立作为结构。
 * 方法可以与实例(实例方法)或类(类方法)关联。
 * 独立的函数可以在库级别进行声明(顶层函数)，也可以通过函数声明或字面表达式称为其他函数内的本地函数。
 * 
 * 
 * 所有内置的操作符也是函数，且它们大部分都被定义为实例方法，可以被开发者重写。
 * 用户定义的类可以通过实现call()方法来摸你内置函数类型。
 * 所有Dart函数都被认为是Function类型的成员
 */