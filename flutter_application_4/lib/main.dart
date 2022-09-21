import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen.dart';

void main() {
runApp(const App());
}

class App extends StatelessWidget {
const App({Key? key}) : super(key: key);


@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 3, 158, 162)),

darkTheme: ThemeData(),
initialRoute: '',
home: const Screen(),

);
}
}