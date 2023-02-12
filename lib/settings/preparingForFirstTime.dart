import 'package:flutter/material.dart';
class PreparingForFirstTime extends StatefulWidget {
  const PreparingForFirstTime({Key? key}) : super(key: key);

  @override
  State<PreparingForFirstTime> createState() => _PreparingForFirstTimeState();
}

class _PreparingForFirstTimeState extends State<PreparingForFirstTime> {
  String loadingText = "Configurando Ors Chat";
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
                width: MediaQuery.of(context).size.width - 50,
                height: 10,
                child: const LinearProgressIndicator(
                  backgroundColor: Colors.transparent,
                  color: Colors.amber,
                ),
              ),
            ),
            Text(loadingText),
            CircularProgressIndicator(

            )
          ],
        ),
      ),
    );
  }
}
