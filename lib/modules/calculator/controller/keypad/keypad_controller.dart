import 'package:calculator/res/strings.dart';
import 'package:get/get.dart';

class KeypadController extends GetxController {
  var currentExpression = "".obs;

  updateExpression({expression}) {
    currentExpression.value = currentExpression.value + expression;
  }

  toggleSign() {
    if (currentExpression.isNotEmpty) {
      if (!(currentExpression.contains(Strings.PLUS)) &&
          !(currentExpression.contains(Strings.MINUS))) {
        if (currentExpression.value[0] != Strings.MINUS) {
          currentExpression.value = Strings.MINUS + currentExpression.value;
        }
      } else {
        List<String> chars = currentExpression.value.split("");
        for (int i = chars.length - 1; i >= 0; i--) {
          if (chars[i] == Strings.PLUS) {
            chars[i] = Strings.MINUS;
            break;
          } else if (chars[i] == Strings.MINUS) {
            if (i == 0) {
              chars[i] = "";
            } else {
              chars[i] = Strings.PLUS;
            }
            break;
          }
        }
        currentExpression.value = "";
        for (var char in chars) {
          currentExpression.value = currentExpression.value + char;
        }
      }
    }
  }

  resetExpression() {
    currentExpression.value = "";
  }
}
