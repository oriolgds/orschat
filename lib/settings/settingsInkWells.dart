import 'package:flutter/material.dart';
import '../scaffoldTransition.dart';
class SettingsInkWell extends StatelessWidget {
  const SettingsInkWell({Key? key}) : super(key: key);

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
        onTap: (){
          //Navigator.of(context).push(scaffoldTransition(Chatting(widget.name, widget.pathToImg), const Offset(0.0, 0.1)));
        },
        child: Row(
          children: <Widget>[
            Icon(Icons.brush_outlined)

          ],
        )
      ),
    );
  }
}
