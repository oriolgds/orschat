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
    return Scaffold(
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
      ),
      body: Text(widget.name),
    );
  }
}
