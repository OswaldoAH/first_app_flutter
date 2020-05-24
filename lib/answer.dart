import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  String answerText;
  Color colorButton;
  Color colorText;
  Answer(
    {
      this.answerText='Default',
      this.colorButton=Colors.white38,
      this.colorText=Colors.black,
      this.selectHandler,
    }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: colorButton,
        textColor: colorText,
      ),
    );
  }
}