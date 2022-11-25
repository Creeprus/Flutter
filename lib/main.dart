import 'package:flutter/material.dart';

import 'core/db/data_base_helper.dart';

void main() {
<<<<<<< HEAD
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHelper.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
=======
  runApp( App());
}


 class App extends StatelessWidget {
   App({super.key});
AppRouter router=AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
onGenerateRoute: router.generateRouter,
initialRoute: log,
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Login Page'),
        ElevatedButton(onPressed: () {

            Navigator.pushNamed(context, mainpage);
        }, child: Text('Авторизироваться')),
             ElevatedButton(onPressed: () {

            Navigator.pushNamed(context, reg);
        }, child: Text('Регистрация'))
      ]),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Второй экран экран'),

        ElevatedButton(onPressed: () {
              
           //  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Screen3()));
        }, child: Text('Кнопка')),
        ElevatedButton(onPressed: () {
            Navigator.pop(context);
        }, child: Text('Назад')),
           
      ]),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Третий экран'),
        ElevatedButton(onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, screen, (route) => false);
          //Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (builder)=> Screen()),(route)=>false);
        }, child: Text('Кнопка')),
        ElevatedButton(onPressed: () {
             Navigator.pushNamed(context, screen2);
        }, child: Text('Перейти на экран 2')),
      ]),
    );
  }
}
>>>>>>> parent of 09ac2a6 (PR3)
