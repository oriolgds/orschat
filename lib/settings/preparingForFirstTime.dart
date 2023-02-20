import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../scaffoldTransition.dart';
class FirstTimeLoading extends StatefulWidget {
  const FirstTimeLoading({this.text = "Configurando Ors Chat", Key? key}) : super(key: key);
  final String text;
  @override
  State<FirstTimeLoading> createState() => _FirstTimeLoadingState();
}
class _FirstTimeLoadingState extends State<FirstTimeLoading> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.of(context).push(scaffoldTransition(const SignInUp(), const Offset(0.0, 0.1)));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {

    });
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
                height: 10,
                duration: const Duration(milliseconds: 400),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.blue.shade100,
                  color: Colors.amber,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.text),
                const SizedBox(
                  height: 10,
                ),
                const CircularProgressIndicator(
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class SignInUp extends StatelessWidget {
  const SignInUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 240,
              width: 170,
              child: Card(
               child: InkWell(
                 customBorder: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 onTap: (){
                   Navigator.push(context, scaffoldTransition(const FirstTimeLoading(text: "Creando cuenta",), const Offset(0.0, 0.0)));
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
        ),
      ),
    );
  }
}