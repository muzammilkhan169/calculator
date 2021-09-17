import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeMode _currentTheme = ThemeMode.light;
  ThemeCubit() : super(ThemeState(currentTheme: ThemeMode.light));

  toggleTheme() {
    _currentTheme =
        _currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    emit(ThemeState(currentTheme: _currentTheme));
  }
}
