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
        title: const Text("Chats"),
      ),
    );
  }
}
