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