//有时，一个库太大，dart允许把库拆成多个较小的part组件。 
library ide;
import 'dart:io' as io;
import 'dart:mirrors' as mirrors;

part 'libary_To_part/browsing.dart';
part 'libary_To_part/package.dart';   // part 本身指向看一个不同的库，dart会警告,当并不是一个part的时候就会编译报错。

/**
 * 用part 来构件库，那么库本身必须要命名，
 * 各个part应该有很好的结构，并且按照逻辑分组，而不是纯粹地堆积代码
 * 
 * 规则：
 * 如果库通过URI引用某个part，而URI的内容并不是一个part，那么这就是一个编译错误
 * 而如果part指向另一个库，那么会产生一个警告，
 * 与导入一样，如果URI不是一个常量字符串或者包含了字符串插值，则会同样会产生编译时错误。
 */