import 'package:calculator/modules/calculator/binding/calculator/calculator_binding.dart';
import 'package:calculator/modules/calculator/views/calculator_screen.dart';
import 'package:calculator/res/constants.dart';
import 'package:calculator/theme/themes.dart';
import 'package:calculator/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: Constants.CALCULATOR_ROUTE,
        getPages: [
          GetPage(
              name: Constants.CALCULATOR_ROUTE,
              page: () => const CalculatorScreen(),
              binding: CalculatorBinding()
              )
        ],
        title: Strings.APP_NAME,
      );
    });
  }
}
