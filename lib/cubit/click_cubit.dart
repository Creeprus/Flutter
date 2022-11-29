import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(ClickInitial());
  int count = 0;
  var result=<Text>[];
  void Click(bool darkmode) {
    if (count >= 10) {
      emit(ClickError('Счёткик равен 10'));
    } else {
        if(darkmode==true)
        {
      count+=2;
      result.add(Text(count.toString()+" Тёмная тема"));
        }
      else
      {
      count++;
            result.add(Text(count.toString()+" Светлая тема"));
      }
      emit(onClick());
    }
  }

  void ClickMinus(bool darkmode) {
    if (count <= 1) {
      emit(ClickError('Счётчик не можетбыть равен 0'));
    } else {
      if(darkmode==true)
      {
      count-=2;
            result.add(Text(count.toString()+" Тёмная тема"));
      }
      else
      {
      count--; 
            result.add(Text(count.toString()+" Светлая тема"));
      }
      emit(onClick());
    }
  }
}
