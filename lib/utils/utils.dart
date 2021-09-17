import 'package:calculator/res/regex.dart';

class Utils {
  static String removeTrailingZeros(String n) {
    return n.replaceAll(Regex.decimalPointRegex(), "");
  }
}
