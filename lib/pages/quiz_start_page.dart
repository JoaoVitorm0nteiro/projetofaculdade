//3 widget
import 'package:flutter/material.dart';

class QuizStart extends StatefulWidget {
  final String titulo;
  final nome;
  const QuizStart({Key? key, required this.titulo, required this.nome})
      : super(key: key);

  @override
  State<QuizStart> createState() => QuizStartStart();
}

class QuizStartStart extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.titulo),
        ),
        body: Center(
            child: Text(
          widget.nome.text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )));
  }
}