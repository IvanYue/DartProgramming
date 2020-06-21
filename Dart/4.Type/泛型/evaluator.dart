library evaluator;

abstract class ExpressionWithEval{
  int get eval;
}

abstract class AdditionWithEval<E extends ExpressionWithEval>{
  E get operand1;
  E get operand2;
  int get eval => operand1.eval + operand2.eval;
}

abstract class SubtrctionWithEval<E extends ExpressionWithEval>{
  E get operand1;
  E get operand2;
  int get eval => operand1.eval - operand2.eval;
}

abstract class NumberWithEval{
  int get val;
  int get eval => val;
}