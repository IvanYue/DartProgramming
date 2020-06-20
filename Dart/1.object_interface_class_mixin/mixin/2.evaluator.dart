library evaluator;



abstract class ExpressionWithEval{
  get eval;
}

abstract class AdditionWithEval{
  get operand1;
  get operand2;
  get eval => operand1.eval + operand2.eval;
}

abstract class SubtractionWithEval{
  get operand1;
  get operand2;
  get eval => operand1.eval - operand2.eval;
}
abstract class NumberWithEval{
  get val;
  get eval => val;
}