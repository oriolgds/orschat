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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 300,
            child: Card(
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                onTap: (){

                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: const <Widget>[
                      Text('Iniciar sesión', style: TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w900),),
                      Text('Si ya tienes una cuenta, podrás recuperar tus conversaciones si hiciste una copia de seguridad.', textAlign: TextAlign.justify,),
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
