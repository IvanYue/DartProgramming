library abstract_expression;

abstract class AbstractExpression{}
abstract class AbstractAddition{
  var operand1,operand2;
  AbstractAddition(this.operand1,this.operand2);
}
abstract class AbstractSubtraction{
  var operand1,operand2;
  AbstractSubtraction(this.operand1,this.operand2);
}

abstract class AbstractNumber{
  var val;
  AbstractNumber(this.val);
}