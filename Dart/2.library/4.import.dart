/// dart 支持导入任意URI（Universal Resource Indicators）

import '1.顶层.dart';
// import 'http://staxRUs/1.顶层.dart';

/// 推荐这种导入方式
// import 'package:2.libary/1.顶层.dart';
/// package 的方式导入，会执行一个常驻的封装了代码位置信息的包管理器。
/// Dart 环境通常自带包管理器。
/// Dart 环境自身的库没有必要使用 package 的方式导入，这些库都是使用 dart：方式访问的

import 'dart:io';

/// import 'dart:io' as io1; 
/// as 可以避免 两个库中的变量名和方法名重复在调用的时候编译不过。
/// 加上前缀 io1.xx 就可以防止这种冲突
/// 


/**
 * 命名空间:库对外可用的对象
 * 
 * 命名空间组合器 show hide
 * import '1.顶层.dart' hide isEmpty，top; 从命名空间中移除 isEmpty和top，产生一个新的命名空间
 * 
 * import '1.顶层.dart' show isEmpty，top; 只有 isEmpty 和 top  可用
 */

/// 当导入一个大兴库，只想使用其中 几个少数成员的时候使用  show
/// 解决库之间的一两个冲突，可以使用 hide
/// 但更好的是使用  as 引入前缀来避免冲突


import 'dart:io' as Io1 show HttpClient,stderr;
// 这样就很方便的看到所依赖的成员。
// 坚持使用show防止导入新成员有意外冲突，可能有时需要解决不同导入成员之间的冲突，并堤防导入成员和继承成员的冲突。




