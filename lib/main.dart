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
      'Respuestas': ['Rojo', 'Negro', 'Blanco', 'Azul']
    },
    {
      'Pregunta': 'Cuál es tu Animal favorito?',
      'Respuestas': ['Conejo', 'Gato', 'Perro', 'Loro']
    },
    {
      'Pregunta': 'Cuál es tu lenguaje de programación favorito?',
      'Respuestas': ['Java', 'Ruby', 'Python', 'Dart']
    }
  ];
  void _incrementIndex() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: (_questionIndex < _questions.length)
          ? 
            Column(
              children: <Widget>[
                Quiz(
                  incrementIndex: _incrementIndex,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              ],
            )
          :
            Result(), 
    );
  }
}
