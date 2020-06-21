library abstract_expressions;

abstract class AbstractExpression{}
 

abstract class AbstractAddition<E>{
  E operand1,operand2;
  AbstractAddition(this.operand1,this.operand2);
}

abstract class AbstractSubtraction<E>{
  E operand1,operand2;
  AbstractSubtraction(this.operand1,this.operand2);
}

abstract class AbstractNumber{
  int eval;
  AbstractNumber(this.eval);
}






















