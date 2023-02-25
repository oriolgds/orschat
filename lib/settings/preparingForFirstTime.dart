import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../scaffoldTransition.dart';
import '../themeData/data.dart';
import 'package:universal_io/io.dart';
class FirstTimeLoading extends StatefulWidget {
  const FirstTimeLoading({Key? key}) : super(key: key);
  @override
  State<FirstTimeLoading> createState() => _FirstTimeLoadingState();
}
class _FirstTimeLoadingState extends State<FirstTimeLoading> {
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ors Chat',
      theme: themeDataLight(),
      darkTheme: themeDataDark(),
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
      ),
      themeMode: ThemeMode.system,
      home: const LoadingScaffold(),
    );
  }
}
class LoadingScaffold extends StatefulWidget {
  const LoadingScaffold({Key? key}) : super(key: key);

  @override
  State<LoadingScaffold> createState() => _LoadingScaffoldState();
}

class _LoadingScaffoldState extends State<LoadingScaffold> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(const Duration(seconds: 2), () {
        Navigator.of(context).push(scaffoldTransition(const SignInUp(), const Offset(0.0, 0.1)));
      });
    });
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
                height: 10,
                duration: const Duration(milliseconds: 400),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.blue.shade100,
                  color: Colors.amber,
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Configurando Ors Chat'),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(
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
                   Navigator.push(context, scaffoldTransition(const FirstTimeLoading(), const Offset(0.0, 0.0)));
                 },
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   child: const Column(
                     children: <Widget>[
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