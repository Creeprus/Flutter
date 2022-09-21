import 'package:flutter/material.dart';
import 'package:flutter_application_5/screen.dart';

void main() {
runApp(const App());
}

class App extends StatelessWidget {
const App({Key? key}) : super(key: key);


@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255)),

darkTheme: ThemeData(),
initialRoute: '',
home: const Screen(),

);
}
}