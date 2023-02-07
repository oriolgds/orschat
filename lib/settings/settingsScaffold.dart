import 'package:flutter/material.dart';
import 'package:orschat/settings/chatWallpaperScaffold.dart';
import '../scaffoldTransition.dart';
import '../main.dart';
import 'settingModalInkWell.dart';
class SettingsScaffold extends StatefulWidget {
  const SettingsScaffold({Key? key}) : super(key: key);

  @override
  State<SettingsScaffold> createState() => _SettingsScaffoldState();
}

class _SettingsScaffoldState extends State<SettingsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          tooltip: "Atrás",
        ),
        title: const Text("Configuración"),
      ),
      body: ListView(
        children: <Widget>[
          SettingsInkWell(Icons.message, "Chats", "Fondos de pantalla, copia de seguridad", (){showProfilePhotoModal(context);}),
        ],
      ),
    );
  }
}


// Modal dialogs
Future<void> showProfilePhotoModal(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          scrollable: true,
          content: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Column(
              children: <Widget>[
                InkWellModal(icon, text, route),
              ],
            ),
          )
        );
      }
  );
}
class SettingsInkWell extends StatelessWidget {
  const SettingsInkWell(this.icon, this.title, this.content, this.route, {Key? key}) : super(key: key);
  final IconData icon;
  final String title;
  final String content;
  final route;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
                width: 0.5,
                color: Color(0xAAcccccc)
            ),
          )
      ),
      height: 100,
      child: InkWell(
          onTap: route,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(icon, size: 50,),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 105,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis, maxLines: 1,),
                      Text(content, overflow: TextOverflow.ellipsis, maxLines: 2,)
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
