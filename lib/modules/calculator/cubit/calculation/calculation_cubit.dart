import 'package:bloc/bloc.dart';
import 'package:function_tree/function_tree.dart';

part 'calculation_state.dart';

class CalculationCubit extends Cubit<CalculationState> {
  CalculationCubit() : super(CalculationState(answer: 0));

  resetValues() {
    emit(CalculationState(answer: 0));
  }

  evaluateExpression({required String expression}) {
    emit(CalculationState(answer: expression.interpret().toDouble()));
  }
}
