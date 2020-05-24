import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No hay más preguntas',
        style: TextStyle(fontSize: 28)
        ),
    );
  }
}