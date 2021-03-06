import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function incrementIndex;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.incrementIndex,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['Pregunta'],
        ),
        ...(questions[questionIndex]['Respuestas'] as List<Map<String, Object>>)
            .map((respuesta) {
          return Answer(
            answerText: respuesta['eleccion'],
            colorButton: Colors.indigo,
            colorText: Colors.white,
            selectHandler: () => incrementIndex(respuesta['Punteo']),
          );
        }).toList(),
      ],
    );
  }
}
