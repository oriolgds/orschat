import 'package:flutter/material.dart';
class Chatting extends StatefulWidget {
  const Chatting(this.name, this.pathToImg, {Key? key}) : super(key: key);
  final String name;
  final String pathToImg;
  @override
  State<Chatting> createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "lib/assets/wallpapers/webp/Wallpaper 1.webp",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
              splashRadius: 24,
              tooltip: "Atras",
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            titleSpacing: 0,
            title: SizedBox(
              height: 60,
              child: InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Image.asset(widget.pathToImg, width: 40, height: 40,)
                      ),
                      Text(widget.name, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start,)
                    ],
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                splashRadius: 24,
                tooltip: "Videollamada",
                onPressed: (){

                },
                icon: const Icon(Icons.video_call_rounded),
              ),
              IconButton(
                splashRadius: 24,
                tooltip: "Llamada",
                onPressed: (){

                },
                icon: const Icon(Icons.call),
              ),
              PopupMenuButton(
                splashRadius: 24,
                icon: const Icon(Icons.more_vert),
                tooltip: "Más opciones",
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: Text('Ver contacto'),
                  ),
                    const PopupMenuItem(
                      child: Text('Silenciar notificaciones'),
                    ),
                  const PopupMenuItem(
                    child: Text('Fondo de pantalla'),
                  ),
                  const PopupMenuItem(
                    child: Text('Exportar'),
                  ),
                  const PopupMenuItem(
                    child: Text('Vaciar chat', style: TextStyle(color: Colors.red),),
                  ),
                  const PopupMenuItem(
                    child: Text('Denunciar', style: TextStyle(color: Colors.red),),
                  ),
                ],
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
