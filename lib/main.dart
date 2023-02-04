import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homePageWidgets.dart';
import 'themeData/data.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark
  ));
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
                  const SliverAppBar(
                    title: Text('Ors Chat'),
                    pinned: true,
                    floating: true,
                    bottom: TabBar(
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