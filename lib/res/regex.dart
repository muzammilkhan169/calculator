class Regex {
  static Pattern decimalPointRegex() {
    return RegExp(r"([.]*0+)(?!.*\d)");
  }
}
