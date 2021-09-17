import 'package:calculator/modules/calculator/widgets/calculator_display_widget.dart';
import 'package:calculator/modules/calculator/widgets/keypad_widget.dart';
import 'package:calculator/res/color_codes.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBarWidget(), body: bodyWidget());
  }

  appBarWidget() {
    return AppBar(
      backgroundColor: ColorCodes.WHITE_COLOR,
      elevation: 0,
    );
  }

  bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      color: ColorCodes.WHITE_COLOR,
      child: Column(
        children: const [
          Expanded(
            child: CalculatorDisplayWidget(),
            flex: 2,
          ),
          Expanded(
            child: KeyPadWidget(),
            flex: 7,
          )
        ],
      ),
    );
  }
}
