import 'package:calculator/modules/calculator/controller/calculation/calculation_controller.dart';
import 'package:calculator/modules/calculator/controller/keypad/keypad_controller.dart';
import 'package:calculator/res/color_codes.dart';
import 'package:calculator/res/strings.dart';
import 'package:calculator/res/styles.dart';
import 'package:calculator/utils/utils.dart';
import 'package:calculator/widgets/neumorphic_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class KeyPadWidget extends StatelessWidget {
  KeyPadWidget({Key? key}) : super(key: key);
  final calculationController = Get.find<CalculationController>();
  final keypController = Get.find<KeypadController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        expressionDisplayWidget(),
        firstRow(context),
        secondRow(context),
        thirdRow(context),
        fourthRow(context),
        fifthRow(context),
      ],
    );
  }

  expressionDisplayWidget() {
    return Container(
        margin: EdgeInsets.only(bottom: 5.0.w),
        alignment: Alignment.bottomRight,
        width: 100.0.w,
        child: Obx(() => Text(keypController.currentExpression.value,
            style: Styles.textStyles(
              color: ColorCodes.ORANGE_COLOR,
              textSize: 17.0.sp,
            ))));
  }

  firstRow(BuildContext context) {
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
              calculationController.resetValues();
              keypController.resetExpression();
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.PLUS_SLASH_MINUS,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.toggleSign();
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.PERCENTAGE,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              calculationController.evaluatePercentage(
                  expression: keypController.currentExpression());
              keypController.resetExpression();
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.DIVIDE,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.DIVIDE);
            }),
      ],
    );
  }

  secondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_7,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_7);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_8,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_8);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_9,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_9);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.MULTIPLY,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.MULTIPLY);
            })
      ],
    );
  }

  thirdRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_4,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_4);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_5,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_5);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_6,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_6);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.MINUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.MINUS);
            })
      ],
    );
  }

  fourthRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_1,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_1);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_2,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_2);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_3,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_3);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.PLUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.PLUS);
            })
      ],
    );
  }

  fifthRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomNeumorphicButton(
            width: 37.0.w,
            isRounded: false,
            child: Text(
              Strings.KEYPAD_0,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.KEYPAD_0);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.POINT,
              style: Styles.textStyles(
                  color: Theme.of(context).primaryColor, textSize: 17.0.sp),
            ),
            onTap: () {
              keypController.updateExpression(expression: Strings.POINT);
            }),
        CustomNeumorphicButton(
            child: Text(
              Strings.EQUALS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {
              if (Utils.checkMathematicalExpression(
                  keypController.currentExpression())) {
                calculationController.evaluateExpression(
                    expression: keypController.currentExpression());
                keypController.resetExpression();
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text(Strings.OOPS),
                        content: Text(Strings.INCORRECT_EXPRESSION),
                      );
                    });
              }
            })
      ],
    );
  }
}
