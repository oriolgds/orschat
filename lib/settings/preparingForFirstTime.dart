import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../scaffoldTransition.dart';
import '../themeData/data.dart';
import 'package:universal_io/io.dart';
import 'package:io/io.dart' show Platform;
import 'package:username_gen/username_gen.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
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
      themeMode: ThemeMode.light,
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
      Timer(const Duration(seconds: 0), () {
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
                height: Platform.isAndroid ? 22 : 10,
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
                   Navigator.push(context, scaffoldTransition(const CreateUsername(), const Offset(0.0, 0.0)));
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
class CreateUsername extends StatefulWidget {
  const CreateUsername({Key? key}) : super(key: key);

  @override
  State<CreateUsername> createState() => _CreateUsernameState();
}
class _CreateUsernameState extends State<CreateUsername> {
  final textControler = TextEditingController();
  List<String> usernameFillHints = [];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textControler.dispose();
  }
  @override
  void initState() {
    super.initState();
    for(int i = 0; i < 30; i++){
      final username = UsernameGen().generate();
      debugPrint(username);
      usernameFillHints.add(username);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: textControler,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Introduce nombre de usuario",
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                )
              ),
              autofocus: true,
              autocorrect: false,
            ),
            const ListTile(
              title: Text("Nombres de usuario sugeridos:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: usernameFillHints.length,
                prototypeItem: ListTile(
                  title: Text(usernameFillHints.first),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: (){
                      textControler.text = usernameFillHints[index];
                    },
                    title: Text(usernameFillHints[index]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  debugPrint("First time in the app");
  runApp(const FirstTimeLoading());
}