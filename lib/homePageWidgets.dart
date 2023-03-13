import 'package:flutter/material.dart';
import 'package:orschat/chat.dart';
import 'package:orschat/scaffoldTransition.dart';
import 'animations/animations.dart';
class ChatContactListItem extends StatefulWidget {
  const ChatContactListItem(this.name, this.pathToImg, this.lastMessage, this.date, {Key? key}) : super(key: key);
  final String name;
  final String pathToImg;
  final String lastMessage;
  final String date;

  @override
  State<ChatContactListItem> createState() => _ChatContactListItemState();
}

class _ChatContactListItemState extends State<ChatContactListItem> {
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
          //
        },
        child: OpenContainer(
          openColor: Colors.transparent,
          closedColor: Colors.transparent,
          closedElevation: 0.0,
          openElevation: 4.0,
          transitionDuration: const Duration(milliseconds: 500),
          closedBuilder: (BuildContext _, VoidCallback openContainer){
            return Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 0,
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              padding: const EdgeInsets.all(5)
                            ),
                            onPressed: (){
                              showProfilePhotoModal(context, "lib/assets/withoutProfilePhoto.png", widget.name);
                            },
                            child: Image.asset(widget.pathToImg, width: 55, height: 55,)
                        ),
                      )
                  ),
                  Positioned(
                      top: 30,
                      left: 70,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width - 70,
                          child: Text(widget.name, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis,)
                      )
                  ),
                  Positioned(
                      bottom: 30,
                      left: 70,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Text(widget.lastMessage, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis,)
                      )
                  ),
                  Positioned(
                      right: 0,
                      bottom: 30,
                      child: Text(widget.date, maxLines: 1, textAlign: TextAlign.end, overflow: TextOverflow.ellipsis,)
                  )
                ],
              ),
            );
          },
          openBuilder: (BuildContext context, void Function({Object? returnValue}) action) {
            return Chatting(widget.name, widget.pathToImg);
          },
        ),
      ),
    );
  }
}
Future<void> showProfilePhotoModal(BuildContext context, String pathToImg, String name) async {
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Image.asset(pathToImg),
          actionsAlignment: MainAxisAlignment.spaceAround,
          actions: <Widget>[
            SizedBox(
              width: 64,
              height: 64,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      )
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).push(scaffoldTransition(Chatting(name, pathToImg), const Offset(0.0, 0.1)));
                  },
                  child: const Icon(Icons.message, size: 40)
              ),
            ),
            SizedBox(
              width: 64,
              height: 64,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  )
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.close, size: 40)
              ),
            ),
          ],
        );
      }
  );
}