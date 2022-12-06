import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final   SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  runApp( MyApp(sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
   MyApp(this.sharedPreferences,{super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      routes: {'/second':(context) =>  Screen(count: sharedPreferences.getInt("counter") ?? 0 )},
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(sharedPreferences, title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
   final SharedPreferences sharedPreferences;

  const MyHomePage(this.sharedPreferences,{super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await widget.sharedPreferences.setInt("counter", _counter);
  }


  @override
  void initState()  { 
    _counter =  widget.sharedPreferences.getInt('counter') ?? 0 ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Screen(
                  //               count: _counter,
                                
                  //             )));
                    Navigator.pushNamed(context,"/second", arguments:  _counter
                     );
                },
                child: Text(''))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
