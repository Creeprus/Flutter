import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'themechanger_state.dart';

class ThemechangerCubit extends Cubit<ThemechangerState> {
  ThemechangerCubit() : super(ThemechangerInitial());

bool isDark = false;
ThemeMode mode=ThemeMode.system;
void ChangeTheme() {
  if (isDark == false) {
    mode=ThemeMode.dark;
    emit(ThemeChanger(mode));
    isDark=true;
  } else {
    mode=ThemeMode.light;
    emit(ThemeChanger(mode));
    isDark=false;
  }

}



}

