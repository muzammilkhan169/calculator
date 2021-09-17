import 'package:calculator/modules/calculator/cubit/calculator_cubit.dart';
import 'package:calculator/res/color_codes.dart';
import 'package:calculator/res/strings.dart';
import 'package:calculator/res/styles.dart';
import 'package:calculator/widgets/neumorphic_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeyPadWidget extends StatefulWidget {
  const KeyPadWidget({Key? key}) : super(key: key);

  @override
  State<KeyPadWidget> createState() => _KeyPadWidgetState();
}

class _KeyPadWidgetState extends State<KeyPadWidget> {
  String expression = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        expressionDisplayWidget(),
        firstRow(),
        secondRow(),
        thirdRow(),
        fourthRow(),
        fifthRow(),
      ],
    );
  }

  expressionDisplayWidget() {
    return Container(
        margin: EdgeInsets.only(bottom: 5.0.w),
        alignment: Alignment.bottomRight,
        width: 100.0.w,
        child: Text(expression,
            style: Styles.textStyles(
              color: ColorCodes.ORANGE_COLOR,
              textSize: 17.0.sp,
            )));
  }

  firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.AC,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = "";
              });
              context.read<CalculatorCubit>().resetValues();
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.PLUS_SLASH_MINUS,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.PERCENTAGE,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.DIVIDE,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + " ${Strings.DIVIDE} ";
              });
            }),
      ],
    );
  }

  secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_7,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_7;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_8,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_8;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_9,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_9;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.MULTIPLY,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + " * ";
              });
            })
      ],
    );
  }

  thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_4,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_4;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_5,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_5;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_6,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_6;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.MINUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + " ${Strings.MINUS} ";
              });
            })
      ],
    );
  }

  fourthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_1,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_1;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_2,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_2;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_3,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_3;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.PLUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + " ${Strings.PLUS} ";
              });
            })
      ],
    );
  }

  fifthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            width: 37.0.w,
            isRounded: false,
            child: Text(
              Strings.KEYPAD_0,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.KEYPAD_0;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.POINT,
              style: Styles.textStyles(
                  color: ColorCodes.BLACK_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              setState(() {
                expression = expression + Strings.POINT;
              });
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.EQUALS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              context
                  .read<CalculatorCubit>()
                  .evaluateExpression(expression: expression);
              setState(() {
                expression = "";
              });
            })
      ],
    );
  }
}
