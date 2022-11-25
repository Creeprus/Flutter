import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(ClickInitial());
  int count = 0;
  void Click(bool darkmode) {
    if (count >= 10) {
      emit(ClickError('Счёткик равен 10'));
    } else {
        if(darkmode==true)
      count+=2;
      else
      count++;
      emit(onClick());
    }
  }

  void ClickMinus(bool darkmode) {
    if (count <= 1) {
      emit(ClickError('Счётчик не можетбыть равен 0'));
    } else {
      if(darkmode==true)
      count-=2;
      else
      count--; 
      emit(onClick());
    }
  }
}
