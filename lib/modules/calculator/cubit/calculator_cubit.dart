import 'package:bloc/bloc.dart';
import 'package:function_tree/function_tree.dart';

part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState(answer: 0));

  resetValues() {
    emit(CalculatorState(answer: 0));
  }

  evaluateExpression({required String expression}) {
    emit(CalculatorState(answer: expression.interpret().toDouble()));
  }
}
