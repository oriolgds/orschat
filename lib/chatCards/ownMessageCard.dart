import 'package:flutter/material.dart';
class OwnMessageCard extends StatelessWidget {
  const OwnMessageCard(this.text, this.time, {this.read = const Icon(Icons.done_all, color: Colors.blue,), Key? key}) : super(key: key);
  final String text;
  final String time;
  final Icon read;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 45,
      ),
      child: Card(
        color: Colors.lightBlueAccent,
        child: Stack(
          children: <Widget>[
            Text(text),
            Row(
              children: <Widget>[
                Text(time),
                read,
              ],
            )
          ],
        ),

      ),
    );
  }
}
