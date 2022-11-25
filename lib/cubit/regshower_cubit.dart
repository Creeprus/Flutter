import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'regshower_state.dart';

class RegshowerCubit extends Cubit<RegshowerState> {
  RegshowerCubit() : super(RegshowerInitial());

  ThemeData themeData= ThemeData(primaryColor: Colors.indigo);

void changethemeAdmin(  int currentrole)
{
  if(currentrole==1)
  {
  themeData= ThemeData(primaryColor: Colors.amber,backgroundColor: Colors.grey,primarySwatch: Colors.amber);
  emit(ThemeSetter(themeData));
  currentrole=-1;
  }
   if(currentrole==2)
  {
  themeData= ThemeData(primaryColor: Colors.teal,backgroundColor: Colors.white38,primarySwatch: Colors.red);
  emit(ThemeSetter(themeData));
    currentrole=-1;
  }
   if(currentrole==0)
  {
  themeData= ThemeData(primaryColor: Colors.teal,backgroundColor: Colors.white38,primarySwatch: Colors.indigo);
   emit(ThemeSetter(themeData));
     currentrole=-1;
  }
}
}
