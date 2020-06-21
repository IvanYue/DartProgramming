/**
 * 未定义类型是malformed类型的一种特殊形式
 * 1.输入错误
 * 2.忘记导入
 * 3.类型实际定以前就使用
 */

/**
 * 歧义类型：将名称相同的不同类型声明到日到同一个作用域，导致类型没有确切的定义
 */

/**
 * 泛型也可能会产生malformed类型。
 * 如果泛型本身是malformed类型，则任意对泛型的调用也都是malformed类型的。
 */

/**
 * 当类型变量在静态成员的声明中被引用时，也是malformed类型的。
 */
// class  C<T,S> {
//   static T cantReferToTypeVars;//
//   static S alsoCantRefrtToTypeVars(T,S){
//     S local;
//     return  Map<T,S>;
//   }
// }

