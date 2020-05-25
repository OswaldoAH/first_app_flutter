import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
      'Respuestas': [
        {'eleccion': 'Rojo', 'Punteo': 10},
        {'eleccion': 'Negro', 'Punteo': 7},
        {'eleccion': 'Blanco', 'Punteo': 5},
        {'eleccion': 'Azul', 'Punteo': 10}
      ]
    },
    {
      'Pregunta': 'Cuál es tu Animal favorito?',
      'Respuestas': [
        {'eleccion': 'Conejo', 'Punteo': 10},
        {'eleccion': 'Gato', 'Punteo': 12},
        {'eleccion': 'Perro', 'Punteo': 15},
        {'eleccion': 'Loro', 'Punteo': 8}
      ]
    },
    {
      'Pregunta': 'Cuál es tu lenguaje de programación favorito?',
      'Respuestas': [
        {'eleccion': 'Java', 'Punteo': 10},
        {'eleccion': 'Ruby', 'Punteo': 8},
        {'eleccion': 'Python', 'Punteo': 8},
        {'eleccion': 'Dart', 'Punteo': 10}
      ]
    }
  ];
  int _punteoTotal=0;
  void _incrementIndex(int punteo) {
    _punteoTotal+=punteo;
    setState(() {
      _questionIndex++;
    });
  }
  void _reiniciar() {
    setState(() {
      _punteoTotal=0;
      _questionIndex=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: (_questionIndex < _questions.length)
          ? Column(
              children: <Widget>[
                Quiz(
                  incrementIndex: _incrementIndex,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              ],
            )
          : Result(
            total: _punteoTotal,
            reiniciar: _reiniciar,
          ),
    );
  }
}
