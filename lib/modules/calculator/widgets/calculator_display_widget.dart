import 'package:calculator/modules/calculator/controller/calculation/calculation_controller.dart';
import 'package:calculator/res/styles.dart';
import 'package:calculator/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CalculatorDisplayWidget extends StatelessWidget {
  const CalculatorDisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculationController = Get.find<CalculationController>();
    return Container(
      margin: EdgeInsets.only(bottom: 5.0.w),
      alignment: Alignment.bottomRight,
      child: Obx(() => Text(
            Utils.removeTrailingZeros(
                calculationController.answer.value.toString()),
            style: Styles.textStyles(
              color: Theme.of(context).primaryColor,
              textSize: 50.0.sp,
            ),
          )),
    );
  }
}
