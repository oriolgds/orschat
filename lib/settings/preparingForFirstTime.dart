import 'dart:async';

import 'package:flutter/material.dart';
class PreparingForFirstTime extends StatefulWidget {
  const PreparingForFirstTime({Key? key}) : super(key: key);

  @override
  State<PreparingForFirstTime> createState() => _PreparingForFirstTimeState();
}

class _PreparingForFirstTimeState extends State<PreparingForFirstTime> {
  Widget dynamicWidget = Container();
  void loading(){
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
  }
  void signInUp(){
    setState(() {
      dynamicWidget = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: (){

              },
              child: Column(
                children: const <Widget>[
                  Text('Iniciar sesión')
                ],
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
    loading();
    signInUp();
  }
  @override
  Widget build(BuildContext context) {
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 10,
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
