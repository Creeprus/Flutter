
import 'package:flutter/material.dart';

import '../main.dart';

const  String log='log';
const  String reg='reg';
const  String mainpage='mainpage';
class AppRouter{
 Route<dynamic>? generateRouter(RouteSettings settings){

  switch(settings.name)
  {
case log:{
    return MaterialPageRoute(builder: (_)=>Login());
}
case reg:{
    return MaterialPageRoute(builder: (_)=>Registration());
}
case mainpage:{
    return MaterialPageRoute(builder: (_)=>MainPage());
}
  }
 }
}