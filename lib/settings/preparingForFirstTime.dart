import 'dart:async';

import 'package:flutter/material.dart';
class PreparingForFirstTime extends StatefulWidget {
  const PreparingForFirstTime({Key? key}) : super(key: key);

  @override
  State<PreparingForFirstTime> createState() => _PreparingForFirstTimeState();
}

class _PreparingForFirstTimeState extends State<PreparingForFirstTime> {
  double linearIndicatorHeight = 10;
  Widget dynamicWidget = Container();
  void loading(BuildContext context){
    setState(() {
      linearIndicatorHeight = 10;
    });
    setState(() {
      dynamicWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text('Configurando Ors Chat'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            color: Colors.blue,
          )
        ],
      );
    });
    signInUp(context);
  }
  Future<void> signInModal(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Text('fds'),
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
  double cardHeight = 240;
  void signInUp(BuildContext context){
    setState(() {
      linearIndicatorHeight = 0;
    });
    setState(() {
      dynamicWidget = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            width: 200,
            height: cardHeight,
            child: Card(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: const <Widget>[
                      Text('Crear cuenta', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w900),),
                      Text('Crea una cuenta para poder usar el mejor servicio de mensajería del mundo.', textAlign: TextAlign.justify,),
                      SizedBox(height: 10,),
                      Icon(Icons.account_circle_rounded, size: 50,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    loading(context);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width,
                height: linearIndicatorHeight,
                duration: const Duration(milliseconds: 400),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.blue.shade100,
                  color: Colors.amber,
                ),
              ),
            ),
            dynamicWidget,

          ],
        ),
      ),
    );
  }
}
