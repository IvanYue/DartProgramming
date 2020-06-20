library expression;



 /// 定义我们的AST节点的形式
import '1.abstract_expression.dart';// 第一步
import '2.evaluator.dart';// 第二步
import '4.multiplication.dart';// 第四步
import '5.multiplication_evaluator.dart';// 第五步 
import '6.string_converter.dart';  ///第六步 添加转换成字符串功能

abstract class Expression = AbstractExpression with ExpressionWithEval,ExpressionWithStringConversion;

/// implements 的目的是在接口间建立预期的关联，而不是共享实现。
class Addition = AbstractAddition with AdditionWithEval,AdditionWithStringConversion implements Expression;

class Subtraction = AbstractSubtraction
    with SubtractionWithEval,SubractionWithStringConversion
    implements Expression;
class Number = AbstractNumber with NumberWithEval,NumberWithStringConversion implements Expression;

/// 添加 乘法
/// 可以独立的添加操作，而独立于原先的类层次结构和已有功能
class Multiplication = AbStractMultioplication with MultiplicationWithEval,MultiplicationWithStringConversion implements Expression;


main(List<String> args) {
  var add = Addition(Number(4), Number(2));
  var sub = Subtraction(Number(10), Number(7));
  print(add.eval);
  print(add.toString());
  print(sub.eval);
  print(sub.toString());
  var e = Addition(add, sub);
  print(e.eval);
  print(e.toString());


  var m = Multiplication(add,sub);
  print('$m = ${m.eval}');
  print(m.toString());
}
