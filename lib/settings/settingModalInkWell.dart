import 'package:flutter/material.dart';
class InkWellModal extends StatelessWidget {
  const InkWellModal(this.icon, this.text, this.route,{Key? key}) : super(key: key);
  final IconData icon;
  final String text;
  final route;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        onTap: (){

        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              width: 10,
            ),
            Icon(Icons.wallpaper),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Text('Fondo de pantalla de chats', style: TextStyle(fontSize: 18), maxLines: 1, overflow: TextOverflow.ellipsis,)
            )
          ],
        ),
      ),
    );
  }
}