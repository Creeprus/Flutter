import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget{
const Screen({super.key, required this.count});
final int count;

@override
Widget build(BuildContext context){
 final arguments = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
return Scaffold(
appBar: AppBar(),
body: Text("Текущее значение: "+arguments.toString()),
);
}
}