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