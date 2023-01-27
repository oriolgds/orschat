import 'package:flutter/material.dart';
class ChatContactListItem extends StatelessWidget {
  const ChatContactListItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: InkWell(
        onTap: (){

        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Positioned(
                top: 25,
                left: 0,
                child: Image.asset("lib/assets/withoutProfilePhoto.png", width: 50, height: 50,)
              ),
              const Positioned(
                top: 30,
                left: 60,
                child: Text("Luk Echeverria Quirante, Instituto, Biel Ortega Cobos", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis,)
              ),
              const Positioned(
                right: 0,
                bottom: 30,
                child: Text('23/01/2023')
              )
            ],
          ),
        ),
      ),
    );
  }
}
