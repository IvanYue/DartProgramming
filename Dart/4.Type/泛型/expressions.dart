library expressions;

import 'evaluator.dart';
import 'abstract_expressions.dart'
    show
        AbstractAddition,
        AbstractExpression,
        AbstractNumber,
        AbstractSubtraction;
import 'multiplication.dart' show AbstractMultiplication;

import 'evaluator.dart'
    show
        AdditionWithEval,
        ExpressionWithEval,
        NumberWithEval,
        SubtrctionWithEval;

import 'multiplication_evaluator.dart' show MultiplicationWithEval;

import 'multiplication.dart';
import 'string_converter.dart'
    show
        AdditionWithStringConversion,
        ExpressionWithStringConversion,
        MultiplicationWithStringConversion,
        NumberWithStringConversion,
        SubtractionWithStringConversion;


abstract class Expression = AbstractExpression with ExpressionWithEval,ExpressionWithStringConversion;

class Addition =  AbstractAddition<Expression> with AdditionWithEval<Expression> ,AdditionWithStringConversion<Expression> implements Expression;

class Subtraction = AbstractSubtraction<Expression> with SubtrctionWithEval<Expression>,SubtractionWithStringConversion<Expression> implements Expression;

abstract class Number = AbstractNumber with NumberWithEval, NumberWithStringConversion implements Expression;

class Multiplication = AbstractMultiplication<Expression> with MultiplicationWithEval<Expression>,MultiplicationWithStringConversion<Expression> implements Expression;

// main(List<String> args) {
//   var add = Addition(Number(4), Number(2));
//   var sub = Subtraction(Number(10), Number(7));
//   print(add.eval);
//   print(add.toString());
//   print(sub.eval);
//   print(sub.toString());
//   var e = Addition(add, sub);
//   print(e.eval);
//   print(e.toString());


//   var m = Multiplication(add,sub);
//   print('$m = ${m.eval}');
//   print(m.toString());
// }