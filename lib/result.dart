import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function reiniciar;

  Result({
    @required this.total, 
    @required this.reiniciar,
    });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text('No hay más preguntas.\nTu puntaje es: ${total}',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            )),
        FlatButton(
          child: Text('Reiniciar Quiz'),
          onPressed: reiniciar,
          textColor: Colors.indigo,
        ),
      ],
    ));
  }
}
