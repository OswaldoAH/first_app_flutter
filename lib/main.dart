import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'First app with Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  var _questions = [
    {
      'Pregunta': 'Cuál es tu color favorito?',
      'Respuestas': ['Rojo','Negro','Blanco','Azul']
    },
    {
      'Pregunta': 'Cuál es tu Animal favorito?',
      'Respuestas': ['Conejo','Gato','Perro','Loro']
    },
    {
      'Pregunta': 'Cuál es tu lenguaje de programación favorito?',
      'Respuestas': ['Java','Ruby','Python','Dart']
    }
  ];
  void _incrementIndex() {
    setState(() {
      if (_questionIndex != _questions.length - 1) {
        _questionIndex++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Question(
            _questions[_questionIndex]['Pregunta'],
          ),
          ...(_questions[_questionIndex]['Respuestas'] as List<String>)
          .map((respuesta) {
            return Answer(
              answerText: respuesta,
              colorButton: Colors.black,
              colorText: Colors.white,
              selectHandler: _incrementIndex,
            );
          }).toList()
          //Answer('Siguiente',Colors.white),
        ],
      ),
    );
  }
}
