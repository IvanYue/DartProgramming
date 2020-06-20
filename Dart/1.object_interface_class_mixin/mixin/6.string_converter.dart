library string_converter;



/// 因为是Object默认实现了得
abstract class ExpressionWithStringConversion{
  toString();
}

abstract class AdditionWithStringConversion{
  get operand1;
  get operand2;
  toString() => '($operand1 + $operand2)';
}

abstract class SubractionWithStringConversion{
  get operand1;
  get operand2;
  toString() => '($operand1 - $operand2)';
}

abstract class NumberWithStringConversion{
  get eval;
  toString()=>'$eval';
}

/// 以为知道了有乘法所以就直接放到了库中
abstract class MultiplicationWithStringConversion{
  get operand1;
  get operand2;
  toString() => '($operand1 * $operand2)';
}