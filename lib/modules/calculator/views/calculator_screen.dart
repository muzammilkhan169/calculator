import 'package:calculator/res/color_codes.dart';
import 'package:calculator/res/strings.dart';
import 'package:calculator/res/styles.dart';
import 'package:calculator/widgets/neumorphic_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 100.0.h,
      width: 100.0.w,
      color: ColorCodes.WHITE_COLOR,
      child: Column(
        children: [
          Expanded(child: counterWidget(), flex: 2),
          Expanded(
            child: keypadWidget(),
            flex: 4,
          )
        ],
      ),
    );
  }

  counterWidget() {
    return Container();
  }

  keypadWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        firstRow(),
        secondRow(),
        thirdRow(),
        fourthRow(),
        fifthRow(),
      ],
    );
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
            onTap: () {}),
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
            onTap: () {}),
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
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_8,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_9,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.EQUALS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {})
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
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_5,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_6,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.MINUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {})
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
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_2,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.KEYPAD_3,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.PLUS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {})
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
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.POINT,
              style: Styles.textStyles(
                  color: ColorCodes.GREY_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {}),
        CustomNeumorphicButton(
            child: Text(
              Strings.EQUALS,
              style: Styles.textStyles(
                  color: ColorCodes.ORANGE_COLOR, textSize: 17.0.sp),
            ),
            onTap: () {})
      ],
    );
  }
}
