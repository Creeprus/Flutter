import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'listedit_state.dart';

class ListeditCubit extends Cubit<ListeditState> {
  ListeditCubit() : super(ListeditInitial());

String tile="Zamn";
var result=<Text>[];
  void AddList()
  {
     result.add(Text(tile));
     
      emit(ListChanger( result));
  }
    void RemoveFromList()
  {
    if(result.length>1)
     result.removeLast();
     
      emit(ListChanger( tile));
  }
}

