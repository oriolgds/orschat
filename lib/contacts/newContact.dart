import 'package:flutter/material.dart';
import '../scaffoldTransition.dart';
class NewContactScaffold extends StatefulWidget {
  const NewContactScaffold({Key? key}) : super(key: key);

  @override
  State<NewContactScaffold> createState() => _NewContactScaffoldState();
}

class _NewContactScaffoldState extends State<NewContactScaffold> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            bottom: 0,
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                    onPressed: () async {
                      Focus.of(context).unfocus();
                    },
                    child: const Text('Cancelar'),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      child: const Text('Crear'),
                    ),
                  ),
                ],
              ),
            )
        ),
      ],
    );
  }
}
