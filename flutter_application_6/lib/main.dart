import 'package:flutter/material.dart';
import 'package:flutter_application_6/MeditateSunAndMoon.dart';
import 'package:flutter_application_6/MeditateSession.dart';
import 'package:flutter_application_6/Medinow.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData(),
      initialRoute: '',
      //home:const MeditateSession(),
      //home:const MeditateSunAndMoon(),
      home:const Medinow(),
      
    );
  }
}

