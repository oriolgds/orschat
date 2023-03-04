import 'package:flutter/material.dart';
class ChatWallpaperScaffold extends StatefulWidget {
  const ChatWallpaperScaffold({Key? key}) : super(key: key);

  @override
  State<ChatWallpaperScaffold> createState() => _ChatWallpaperScaffoldState();
}

class _ChatWallpaperScaffoldState extends State<ChatWallpaperScaffold> {
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
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,

          childAspectRatio: 2 / 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: 25,
        itemBuilder: (BuildContext ctx, int index){
          return InkWell(
            onTap: () async {

            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('lib/assets/wallpapers/webp/Wallpaper $index.webp', fit: BoxFit.fitHeight,)
              )
            ),
          );
        }
      ),
    );
  }
}
