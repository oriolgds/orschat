import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orschat/animations/animations.dart';
import 'package:orschat/scaffoldTransition.dart';
import 'homePageWidgets.dart';
import 'themeData/data.dart';
import 'settings/settingsScaffold.dart' as settings_scaffold;
import 'settings/preparingForFirstTime.dart' as first_time;
import 'dart:async';
import 'database/main.dart' as database;
import 'package:shared_preferences/shared_preferences.dart';
void main() async {
  final prefs = await SharedPreferences.getInstance();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark
  ));
  runApp(const first_time.FirstTimeLoading());
  /*bool? firstTime = prefs.getBool('firstTime');
  if(firstTime == false || firstTime == null){
    runApp(const first_time.FirstTimeLoading());
  }
  else {
    runApp(const HomePage());
  }
  prefs.clear();*/
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ors Chat',
      theme: themeDataLight(),
      darkTheme: themeDataDark(),
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
      ),
      themeMode: ThemeMode.system,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: const Text('Ors Chat'),
                    actions: <Widget>[
                      IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Conectando con el servidor'),
                            )
                          );
                          database.testConnection().then((value){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if(value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Conectado correctamente al servidor')
                                  )
                              );
                            }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Imposible conectar con el servidor')
                                  )
                              );
                            }
                          });
                        },
                        icon: const Icon(Icons.refresh),
                        tooltip: "Forzar recarga",
                      ),
                      IconButton(
                        onPressed: ()async {
                          Navigator.of(context).push(scaffoldTransition(const settings_scaffold.SettingsScaffold(), const Offset(0.0, 0.1)));
                        },
                        icon: const Icon(Icons.settings),
                        tooltip: "Configuración",
                      ),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                    pinned: true,
                    floating: true,
                    shadowColor: Colors.black,
                    bottom: const TabBar(
                      tabs: [
                        Tab(child: Text('Chats')),
                        Tab(child: Text('Llamadas')),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: const <Widget>[
                      ChatContactListItem("Luk", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Biel", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Alex", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Cálvaro", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Luk", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Biel", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Alex", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Cálvaro", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),ChatContactListItem("Luk", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Biel", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Alex", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                      ChatContactListItem("Cálvaro", "lib/assets/withoutProfilePhoto.png", "¡Hola! ¿Qué tal?", "Ayer"),
                    ],
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: const <Widget>[
                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}