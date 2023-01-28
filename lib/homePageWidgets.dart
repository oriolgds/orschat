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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 0,
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    )
                  ),
                  onPressed: (){
                    showProfilePhotoModal(context, "lib/assets/withoutProfilePhoto.png");
                  },
                  child: Image.asset("lib/assets/withoutProfilePhoto.png", width: 50, height: 50,)
                )
              ),
              Positioned(
                top: 30,
                left: 70,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width - 70,
                    child: const Text("Luk Echeverria Quirante, Instituto, Biel Ortega Cobos", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis,)
                )
              ),
              Positioned(
                  bottom: 30,
                  left: 70,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width - 170,
                      child: const Text("Luk Echeverria Quirante, Instituto, Biel Ortega Cobos", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis,)
                  )
              ),
              const Positioned(
                right: 0,
                bottom: 30,
                child: Text('23/01/2023', maxLines: 1, textAlign: TextAlign.end, overflow: TextOverflow.ellipsis,)
              )
            ],
          ),
        ),
      ),
    );
  }
}
Future<void> showProfilePhotoModal(BuildContext context,String pathToImg) async {
  return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Image.asset(pathToImg),
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
                },
                child: const Icon(Icons.close, size: 40)
              ),
            )
          ],
        );
      }
  );
}