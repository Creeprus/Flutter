import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_6/cubit/click_cubit.dart';
import 'package:flutter_application_6/cubit/listedit_cubit.dart';
import 'package:flutter_application_6/cubit/themechanger_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ClickCubit()),
        BlocProvider(create: (context) => ThemechangerCubit()),
        BlocProvider(create: (context) => ListeditCubit()),
      ],
      child: BlocBuilder<ThemechangerCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            onGenerateRoute: router.generateRouter,
            darkTheme: ThemeData.dark(),
            initialRoute: mainpage,
            themeMode: state,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePage();
}

class _TablePage extends State<TablePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  final List<String> products =
      List<String>.generate(1, (i) => "Product List: $i");
  List<Text> myWidgetList = <Text>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
// body:Column(children: [

//        ListView(
//         children: [

//           Column(children:[

//           BlocBuilder<ListeditCubit, ListeditState>(

//             builder: (context, state) {
//               if(state is ListChanger)
//               {
//                 myWidgetList=context.read<ListeditCubit>().result;

//               return myWidgetList;
//               }
//               return   Text("Лист пуст");
//             },
//           ),
//           ],
//           ),
//         ],

//       ),

//            Row(
//             children: [
//               FloatingActionButton(
//                 onPressed: () {
//                   context.read<ListeditCubit>().AddList();
//                 },
//                 tooltip: 'Добавить элемент',
//                 child: const Icon(Icons.add),
//               ),
//               FloatingActionButton(
//                 onPressed: () {},
//                 tooltip: 'Удалить элемент',
//                 child: const Icon(Icons.remove),
//               ),
//             ],
//           ),

// ],)
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return BlocBuilder<ListeditCubit, ListeditState>(
                    builder: (context, state) {
                      if (state is ListChanger) {
                        myWidgetList = context.read<ListeditCubit>().result;

                        return ListTile(title: Column(children: myWidgetList));
                      }
                      return Text("Лист пуст");
                    },
                  );
                }),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<ListeditCubit>().AddList();
                  },
                  tooltip: 'Добавить элемент',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ListeditCubit>().RemoveFromList();
                  },
                  tooltip: 'Удалить элемент',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  List<ClickCubitModel> myWidgetList = <ClickCubitModel>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Счётчик',
            ),
            BlocBuilder<ClickCubit, ClickState>(
              builder: (context, state) {
                if (state is onClick) {
                  return Text(
                    context.read<ClickCubit>().count.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                if (state is ClickError) {
                  return Text(
                    state.message,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }

                return Text(
                  'Нажмите на кнопку',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    final ThemeData mode = Theme.of(context);
                    var brightness = mode.brightness;
                    bool isDarkMode = brightness == Brightness.dark;
                    context.read<ClickCubit>().Click(isDarkMode);
                  },
                  tooltip: 'Плюс',
                  child: const Icon(Icons.add_circle),
                ),
                FloatingActionButton(
                  onPressed: () {
                    final ThemeData mode = Theme.of(context);
                    var brightness = mode.brightness;
                    context
                        .read<ClickCubit>()
                        .ClickMinus(brightness == Brightness.dark);
                  },
                  tooltip: 'Минус',
                  child: const Icon(Icons.remove_circle),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ThemechangerCubit>().ChangeTheme();
                  },
                  tooltip: 'Сменить тему',
                  child: const Icon(Icons.change_circle),
                ),
                // FloatingActionButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, log);
                //   },
                //   tooltip: 'Перейти на другой виджет',
                //   child: const Icon(Icons.change_history),
                // ),
              ],
            ),
            Expanded(
              child: BlocBuilder<ClickCubit, ClickState>(
                builder: (context, state) {
                  myWidgetList = context.read<ClickCubit>().result;

                  return ListView.builder(
                      itemCount: myWidgetList.length,
                      itemBuilder: (context, index) {
                        if (myWidgetList.isNotEmpty)
                          return ListTile(
                              title: Text(myWidgetList[index].count.toString() +
                                  ", " +
                                  myWidgetList[index].message));
                        else
                          return Text("Лист пуст");
                      });
                },
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

const String log = 'log';
const String mainpage = 'mainpage';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case log:
        {
          return MaterialPageRoute(builder: (_) => TablePage());
        }
      case mainpage:
        {
          return MaterialPageRoute(builder: (_) => MyHomePage());
        }
    }
  }
}
