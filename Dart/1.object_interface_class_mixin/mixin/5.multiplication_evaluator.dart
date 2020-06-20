library multiplication_evaluator;

abstract class MultiplicationWithEval{
  get operand1;
  get operand2;

  get eval => operand1.eval * operand2.eval;
}