import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orschat/animations/animations.dart';
import 'package:orschat/scaffoldTransition.dart';
import 'homePageWidgets.dart';
import 'themeData/data.dart';
import 'settings/settingsScaffold.dart' as settings_scaffold;
import 'settings/preparingForFirstTime.dart' as first_time;
import 'chat.dart' as chat;
import 'dart:async';
import 'database/main.dart' as database;
import 'package:shared_preferences/shared_preferences.dart';
void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark
  ));
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  debugPrint("Username: ${prefs.getString('username')}");
  debugPrint("Password: ${prefs.getString('password')}");
  if(prefs.getString('username') == null || prefs.getString('password') == null){
    first_time.main();
  }
  else {
    runApp(HomePage(prefs, 0));
  }
  chat.main();
  debugPrint("Light background: ${prefs.getInt('chatBackgroundLight')}");
  debugPrint("Dark background: ${prefs.getInt('chatBackgroundDark')}");
}
class HomePage extends StatefulWidget {
  const HomePage(this.prefs, this.itemCountChat, {super.key});
  final int itemCountChat;
  final SharedPreferences prefs;
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Widget chatItemList = Container();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatItemList = const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Aún no has creado chats', style: TextStyle(color: Colors.blue)),
      ],
    );
  }
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
                            SnackBar(
                              content: Text('Conectando con el servidor', style: Theme.of(context).textTheme.labelMedium,),
                            )
                          );
                          database.testConnection().then((value){
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if(value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Conectado correctamente al servidor', style: Theme.of(context).textTheme.labelMedium,)
                                  )
                              );
                            }
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Imposible conectar con el servidor', style: Theme.of(context).textTheme.labelMedium,)
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
                  chatItemList,
                  ListView(
                    children: const [
                      ChatContactListItem('Luk', 'lib/assets/withoutProfilePhoto.png', '¡Hola!', '02/10/22')
                    ],
                  )
                ],
              ),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

            },
            child: const Icon(Icons.person_add_alt_1_sharp),
          ),
        ),
      ),
    );
  }
}