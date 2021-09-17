import 'package:calculator/app/app_routes.dart';
import 'package:calculator/modules/calculator/cubit/calculator_cubit.dart';
import 'package:calculator/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return BlocProvider(
        create: (context) => CalculatorCubit(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerates,
          title: Strings.APP_NAME,
        ),
      );
    });
  }
}
