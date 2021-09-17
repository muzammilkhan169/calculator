import 'package:bloc/bloc.dart';

part 'keypad_state.dart';

class KeypadCubit extends Cubit<KeypadState> {
  String _oldExpression = "";
  KeypadCubit() : super(KeypadState(expression: ""));

  updateExpression({expression}) {
    _oldExpression = _oldExpression + expression;

    emit(KeypadState(expression: _oldExpression));
  }

  resetExpression() {
    _oldExpression = "";
    emit(KeypadState(expression: _oldExpression));
  }

  String getExpression() {
    return _oldExpression;
  }
}
