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
  void loading(){
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
  }
  double cardHeight = 240;
  void signInUp(){
    Widget card(String title, String content, IconData icon, var func){
      return AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 200,
        height: cardHeight,
        child: Card(
          child: InkWell(
            customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onTap: (){
              setState(() {
                cardHeight = 0;
              });
              func;
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(title, style: const TextStyle(fontSize: 20, fontFamily: 'Raleway', fontWeight: FontWeight.w900),),
                  Text(content, textAlign: TextAlign.justify,),
                  const SizedBox(height: 10,),
                  Icon(icon, size: 50,)
                ],
              ),
            ),
          ),
        ),
      );
    }
    setState(() {
      linearIndicatorHeight = 0;
    });
    setState(() {
      dynamicWidget = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          card('Iniciar sesión', 'Si ya tienes una cuenta, podrás recuperar tus conversaciones si hiciste una copia de seguridad.', Icons.login_rounded, (){}),
          card('Crear cuenta', 'Crea una cuenta para poder usar el mejor servicio de mensajería del mundo.', Icons.account_circle_rounded, (){}),
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
