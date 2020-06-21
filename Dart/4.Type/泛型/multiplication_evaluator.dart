library multiplication_evaluator;
import 'evaluator.dart' show ExpressionWithEval;

abstract class MultiplicationWithEval<E extends ExpressionWithEval>{
  E get operand1;
  E get operand2;
  int get eval => operand1.eval * operand2.eval;
}