import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntasApp());
}

class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;

  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'nota': 7},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 7},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Lobo', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'nota': 4},
        {'texto': 'João', 'nota': 6},
        {'texto': 'Leonardo', 'nota': 8},
        {'texto': 'Pedro', 'nota': 10},
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int nota) {
    setState(() {
      _perguntaSelecionada++;
      _notaTotal += nota;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('perguntas'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(_notaTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
