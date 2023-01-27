import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: DefaultTabController(
        length: 2, //3
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Ors Chat'),
            bottom: const TabBar(
              indicatorWeight: 5,
              tabs: [
                Padding(padding: EdgeInsets.only(bottom: 5, top: 10),child: Text("Chats", style: TextStyle(fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis),),
                Padding(padding: EdgeInsets.only(bottom: 5, top: 10),child: Text("Llamadas", style: TextStyle(fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis),),
                //Padding(padding: EdgeInsets.only(bottom: 5, top: 10),child: Text("Configuración", style: TextStyle(fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis,),),
              ],
            ),
          ),
          body: TabBarView(
              children: [
                Container(
                  child: Text("Chats"),
                ),
                Container(
                  child: Text("Llamadas"),
                ),
                Container(
                  child: Text("Configuración"),
                ),
              ],
          ),
        ),
      )
    );
  }
}