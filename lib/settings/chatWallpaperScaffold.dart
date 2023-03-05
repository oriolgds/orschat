import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../chat.dart' as chat;
class ChatWallpaperScaffold extends StatefulWidget {
  const ChatWallpaperScaffold({Key? key}) : super(key: key);

  @override
  State<ChatWallpaperScaffold> createState() => _ChatWallpaperScaffoldState();
}

class _ChatWallpaperScaffoldState extends State<ChatWallpaperScaffold> {
  Future<void> setChatWallpaper(int index, int target) async {
    final prefs = await SharedPreferences.getInstance();
    // Target = 0: apply on light mode
    // Target = 1: apply on dark mode
    // Target = 2: both
    if(target == 0) {
      prefs.setInt('chatBackgroundLight', index);
    } else if(target == 1) {
      prefs.setInt('chatBackgroundDark', index);
    } else if (target == 2) {
      prefs.setInt('chatBackgroundLight', index);
      prefs.setInt('chatBackgroundDark', index);
    }
    // Refresh chat
    chat.main();
  }
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
        title: const Text("Fondos"),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    content: const Text('¿Estas seguro de que quieres restablecer los fondos de chat a sus valores predeterminados?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: const Text('Cancelar', style: TextStyle(color: Colors.green),)
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setInt('chatBackgroundLight', 1);
                          prefs.setInt('chatBackgroundDark', 0);
                          // Refresh chat vars
                          chat.main();
                        },
                        child: const Text('Aceptar', style: TextStyle(color: Colors.red),)
                      )
                    ],
                  );
                }
              );
            },
            icon: const Icon(Icons.restore),
            tooltip: "Restablecer valores predeterminados",
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 2 / 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        cacheExtent: 100,
        itemCount: 26,
        itemBuilder: (BuildContext ctx, int index){
          return InkWell(
            onTap: () async {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context){
                  return SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setChatWallpaper(index, 0);
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Icon(Icons.light_mode_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Aplicar a modo claro'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        InkWell(
                          onTap: (){
                            setChatWallpaper(index, 1);
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Icon(Icons.dark_mode_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Aplicar a modo oscuro'),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        InkWell(
                          onTap: (){
                            setChatWallpaper(index, 2);
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                Icon(Icons.settings_brightness_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Aplicar a ambos'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              );
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('lib/assets/wallpapers/webp/Wallpaper $index.webp', fit: BoxFit.fitHeight,)
              )
            ),
          );
        }
      ),
    );
  }
}
