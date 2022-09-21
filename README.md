# ПРАКТИЧЕСКАЯ РАБОТА №1
## Тема: Составление макетов на Flutter
## Цель работы: 
### Изучить как работает процесс вёрстки на Flutter
## Ход работы:
 
Рисунок 1 - Первый макет
Код main.dart:
 
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
 

Код screen.dart:
 
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
const Screen({Key? key}) : super(key: key);

@override
State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
@override
Widget build(BuildContext context) {
return Scaffold(

body:SafeArea(
  
child: Column(
 
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  
Container(
    child: Text(''),padding:  EdgeInsets.all(40)
  ),
Container(
  child: Text('medinow',style:  TextStyle(fontSize: 50,color:Colors.white,fontWeight: FontWeight.bold)),alignment: Alignment.center,  
  ),
Container(
  child: Text('Meditate With Us!',style: TextStyle(fontSize: 15,color:Colors.white),),alignment: Alignment.center,
  
  ),
  

Container(
  padding: EdgeInsets.only(top:50),
  child:
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    height: 50.0,
    decoration:  BoxDecoration(
      
      color: Colors.white,
      border:  Border.all(color: Colors.white, width: 2.0),
      borderRadius:  BorderRadius.circular(20.0),
    ),
    child:  Center(child:  Text('Sign in with Apple', style:  TextStyle(fontSize: 18.0, color: Colors.black),),),
  ),
),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
    margin: EdgeInsets.all(5),
    height: 50.0,
    decoration:  BoxDecoration(
      color: Colors.white,
      border:  Border.all(color: Colors.white, width: 2.0),
      borderRadius:  BorderRadius.circular(20.0),
    ),
    child:  Center(child: Text('Continue with Email or Phone', style:  TextStyle(fontSize: 18.0, color: Colors.black),),),
  ),
),

InkWell(
  onTap: () => print('hello'),
  child:  Container(
   
    height: 50.0,
    
    child:  Center(child: Text('Continue With Google', style:  TextStyle(fontSize: 14.0, color: Colors.white),),),
  ),
),
Container(
  width: 250,
  height: 250,
   child:   Image.asset('images/SourceFigma.jpg'),
  
),
],

),
),
);
}
}
 

 
Рисунок 2 - 2 макет
Код main.dart:
 
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
 
Код screen.dart:
 
import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
const Screen({Key? key}) : super(key: key);

@override
State<Screen> createState() => _ScreenState();
}


class _ScreenState extends State<Screen> {
@override
Widget build(BuildContext context) {
return Scaffold(

body:SafeArea(
  
child: Column(

crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceAround,

children: [
  
  Container(
  width: 325,
  height: 250,
  alignment: Alignment.center,
   child:   Image.asset('images/FigmaBalls.jpg'),
  
),

Expanded(flex: 30,child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    
    children: [
       Container(
    padding:EdgeInsets.fromLTRB(20,0,0,0),
     color:Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
    child: const Text('Peter Mach',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize: 12,)),
  ),
  Container(
     padding:EdgeInsets.fromLTRB(20,0,0,0),
    
    child: const Text('Mind Deep Relax',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    alignment: Alignment.topLeft,
   
  ),
  Container(
     padding:EdgeInsets.fromLTRB(20,0,0,0),
    width: 350,
    child: const Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',style: TextStyle(fontSize: 15,)),
    alignment: Alignment.topLeft,
   
  ),
  InkWell(
  onTap: () => print('hello'),
  child:  Container(
    margin: EdgeInsets.all(15),
    height: 50.0,
    decoration:  BoxDecoration(
      color: Color.fromARGB(255, 3, 158, 162),
      border:  Border.all(color: Colors.white, width: 2.0),
      borderRadius:  BorderRadius.circular(20.0),
    ),
    child:  Center(child: Text('▷  Play next Session', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 255, 255, 255)),),),
  ),
),
]),
),


Expanded(flex:10,child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  InkWell(
   onTap: () => print('hello'),
  child: Container(
    
    height: 50,
    width:50,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    decoration: BoxDecoration(color:Color.fromARGB(255, 47, 128, 237),borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 47, 128, 237),style: BorderStyle.solid)),
    child: const Text('▷',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20,)),
    alignment: Alignment.center,
  ),
  ),
  Expanded(child:Column(
    children:[
   Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('Sweet Memories',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 17,)),
    
  ),
    Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('December 29 Pre-Launch',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize: 12,)),
    
  ),
    ]
  )
  ),
  
 Container(
  width: 100,
  height: 100,
    alignment: Alignment.topRight,
  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: const Text('...',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize:30,)),
    
  ),
]),
),

Expanded(flex:10,child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  InkWell(
   onTap: () => print('hello'),
  child: Container(
    
    height: 50,
    width:50,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    decoration: BoxDecoration(color:Color.fromARGB(255, 3, 158, 162),borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 3, 158, 162),style: BorderStyle.solid)),
    child: const Text('▷',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20,)),
    alignment: Alignment.center,
  ),
  ),
  Expanded(child:Column(
    children:[
   Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('A Day Dream',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 17,)),
    
  ),
    Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('December 29 Pre-Launch',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize: 12,)),
    
  ),
    ]
  )
  ),
  
 Container(
  width: 100,
  height: 100,
    alignment: Alignment.topRight,
  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: const Text('...',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize:30,)),
    
  ),
]),
),
Expanded(flex:10,child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  InkWell(
   onTap: () => print('hello'),
  child: Container(
    
    height: 50,
    width:50,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    decoration: BoxDecoration(color:Color.fromARGB(255, 240, 146, 53),borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 240, 146, 53),style: BorderStyle.solid)),
    child: const Text('▷',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20)),
    alignment: Alignment.center,
  ),
  ),
  Expanded(child:Column(
    children:[
   Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('A Day Dream',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 17,)),
    
  ),
    Container(
    alignment: Alignment.centerLeft,
    margin:EdgeInsets.fromLTRB(20,0,0,0),
    child: const Text('December 29 Pre-Launch',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize: 12,)),
    
  ),
    ]
  )
  ),
  
 Container(
  width: 100,
  height: 100,
    alignment: Alignment.topRight,
  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: const Text('...',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0),fontSize:30,)),
    
  ),
]),
),
],

),

),

);
}
}
 
 
Рисунок 3 - 3 макет часть 1
 
Рисунок 4 - 3 макет часть 2
Код main.dart:
 
import 'package:flutter/material.dart';
import 'package:flutter_application_6/screen.dart';

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
      home:const Screen(),
      
    );
  }
}
 

Код screen.dart:
 
import 'package:flutter/material.dart';


class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}


class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
resizeToAvoidBottomInset: false,
      
appBar: AppBar(title: Text('Meditate',style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,foregroundColor: Colors.black,actions: [
Icon(Icons.search),

Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0))
], 


),

  body: SingleChildScrollView(
     scrollDirection:Axis.vertical,
     child:Column(
children: [
 
Scrollbar( child:SingleChildScrollView(
  
  scrollDirection: Axis.horizontal,
  child: Row(children: [
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 50.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 3, 158, 162),
      border:  Border.all(color: Color.fromARGB(255, 3, 158, 162)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('All', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 255, 253, 253)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 150.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Bible In Year', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 75.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Dailies', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
 InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 75.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('Minutes', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),
InkWell(
  onTap: () => print('hello'),
  child:  Container(
        
         margin: EdgeInsets.all(5),
    width: 90.0,
    height:50,
    decoration:  BoxDecoration(
      
      color: Color.fromARGB(255, 239, 254, 255),
      border:  Border.all(color: Color.fromARGB(255, 239, 254, 255)),
      borderRadius:  BorderRadius.circular(50.0),
    ),
    child:  Center(child:  Text('November', style:  TextStyle(fontSize: 18.0, color: Color.fromARGB(255, 3, 158, 162)),),),
  ),
),


]),),),

SingleChildScrollView(
  scrollDirection: Axis.vertical,
  
  child:Column(
    children:[
Container(
  padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
  width: 350,
  height: 200,
  alignment: Alignment.center,
child:Image.asset('images/SunAndMoon.png'),
),
Container(
  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
  alignment: Alignment.centerLeft,
  child: const Text('A Song of a Moon',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
),
Container(
  padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
  alignment: Alignment.centerLeft,
  child: const Text('Start with the basics',style: TextStyle(fontSize: 16),),
),
Expanded(flex:0,child: Row (  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,children: [
  
  Padding( padding: EdgeInsets.fromLTRB(20, 5, 0, 0),child: Icon(
  Icons.favorite_border,
  
  color: Color.fromARGB(255, 0, 0, 0),)
,),

Container(
  padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
child:Text('9 Sessions',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0)),)

),
Container(
  padding: EdgeInsets.fromLTRB(150, 10, 0, 0),

child:Text('Start',style: TextStyle(color: Color.fromARGB(104, 0, 0, 0)),)

),
Container(
  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),

child:Text('>',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),)

),

]
),
),

Padding(
padding: const EdgeInsets.fromLTRB(14, 0, 6, 0),
child: Column(children: [
Padding(
padding: EdgeInsets.only(bottom: 15),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(

width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/SleepHour.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"The Sleep Hour",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Ashna Mukherjee",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'3 Sessions',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/EasyOnTheMission.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Easy On The Mission",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Peter Mach",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'5 minutes',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
],
),),
Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/RelaxWithMe.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Relax With Me",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Amanda James",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'3 Sessions',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
Container(
width: 170,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20.0),
border: Border.all(color: Colors.grey, width: 0.2)),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset('images/SunAndEnergy.png'),
const Padding(
padding: EdgeInsets.all(4),
child: Text(
"Sun and Energy",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold),
),
),
const Padding(
padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
child: Text(
"Mecheal Hui",
textAlign: TextAlign.start,
style: TextStyle(
fontSize: 14,
),
),
),
Padding(
padding: EdgeInsets.all(4),
child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: const [
Icon(
Icons.favorite_border,
size: 13.0,
),
Expanded(
child: Text(
'5 minutes',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
),
Text(
'Start',
style: TextStyle(
color: Colors.grey, fontSize: 12),
),
Icon(
Icons.navigate_next,
color: Colors.black,
size: 20.0,
),
],
),
),
]),
),
],
),
]),
),
],
),


),

],
  ),),
 
    );
  }
}
 

Вывод: В процессе практической работы были получены навыки по составлению вёрстки на Flutter.
