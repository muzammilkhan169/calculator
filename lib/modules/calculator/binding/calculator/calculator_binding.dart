import 'package:calculator/modules/calculator/controller/calculation/calculation_controller.dart';
import 'package:calculator/modules/calculator/controller/keypad/keypad_controller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CalculationController());
    Get.put(KeypadController());
  }
}
