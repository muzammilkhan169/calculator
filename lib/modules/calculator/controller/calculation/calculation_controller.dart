import 'package:get/get.dart';

import 'calculation_handler.dart';

class CalculationController extends GetxController {
  RxDouble answer = 0.0.obs;

  evaluateExpression({required String expression}) => answer.value =
      CalculationsHandler().caculateMathematicalExpression(expression);

  evaluatePercentage({required String expression}) =>
      answer.value = CalculationsHandler().calculatePercentage(expression);

  resetValues() => answer.value = 0.0;
}
