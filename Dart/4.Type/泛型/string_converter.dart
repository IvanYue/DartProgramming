library string_converter;
abstract class ExpressionWithStringConversion{
  String toString();
}

abstract class AdditionWithStringConversion<E extends ExpressionWithStringConversion>{
  E get operand1;
  E get operand2;
  String toString() => '$operand1 + $operand2';
}

abstract class SubtractionWithStringConversion<E extends ExpressionWithStringConversion>{
  E get operand1;
  E get operand2;
  String toString() => '$operand1 - $operand2';
}

abstract class NumberWithStringConversion{
  int get eval;
  String toString() => '$eval';
}

abstract class MultiplicationWithStringConversion<E extends ExpressionWithStringConversion>{
  E get operand1;
  E get operand2;
  String toSting() => '$operand1 * $operand2';
}