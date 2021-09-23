import 'package:calculator/res/strings.dart';

class CalculationsHandler {
  double caculate(String expression) =>
      _parseMinusSeparatedExpression(expression);

  double _parseMinusSeparatedExpression(String expression) {
    List<String> numbersString = expression.split(Strings.MINUS);
    List<double> listInDouble = [];
    for (int i = 0; i < numbersString.length; i++) {
      listInDouble.add(_parsePlusSeparatedExpression(numbersString[i]));
    }
    double result = listInDouble.reduce((acc, no) => acc - no);
    return result;
  }

  double _parsePlusSeparatedExpression(String expression) {
    List<String> numbersString = expression.split(Strings.PLUS);
    List<double> listInDouble = [];
    for (int i = 0; i < numbersString.length; i++) {
      listInDouble
          .add(_parseMultiplicationSeparatedExpression(numbersString[i]));
    }
    double result = listInDouble.reduce((acc, no) => acc + no);
    return result;
  }

  double _parseMultiplicationSeparatedExpression(String expression) {
    List<String> numbersString = expression.split(Strings.MULTIPLY);
    List<double> listInDouble = [];
    for (int i = 0; i < numbersString.length; i++) {
      listInDouble.add(_parseDivisionSeparatedExpression(numbersString[i]));
    }
    double result = listInDouble.reduce((acc, no) => acc * no);
    return result;
  }

  double _parseDivisionSeparatedExpression(String expression) {
    List<String> numbersString = expression.split(Strings.DIVIDE);
    List<double> listInDouble = [];
    for (int i = 0; i < numbersString.length; i++) {
      listInDouble.add(double.parse(numbersString[i]));
    }
    double result = listInDouble.reduce((acc, no) => acc / no);
    return result;
  }
}
