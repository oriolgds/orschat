import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homePageWidgets.dart';
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
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
        popupMenuTheme: const PopupMenuThemeData(
          color: Color(0xFFFAFAFA)
        ),
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.black87,
          labelColor: Colors.black87
        ),
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.all(
              const Color(0xFF212529)
            )
          )
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        popupMenuTheme: const PopupMenuThemeData(
          color: Color(0xFF1C1B1F)
        ),
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
        )
      ),
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