import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'themechanger_state.dart';



class ThemechangerCubit extends Cubit<ThemeMode> {
  ThemechangerCubit() : super(ThemeMode.light);

bool isDark = false;
ThemeMode mode=ThemeMode.system;
void ChangeTheme() {
  if (isDark == false) {
    mode=ThemeMode.dark;
    emit(mode);
    isDark=true;
  } else {
    mode=ThemeMode.light;
    emit(mode);
    isDark=false;
  }

}
}

