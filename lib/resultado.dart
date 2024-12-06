import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _reiniciarQuestionario;

  const Resultado(this.pontuacao, this._reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!!';
    } else if (pontuacao < 12) {
      return 'Voce é bom!!';
    } else if (pontuacao < 16) {
      return 'Impressionante!!';
    } else {
      return 'Nivel Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: _reiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green, // Cor de fundo
            foregroundColor: Colors.white, // Cor do texto
          ),
        ),
      ],
    );
  }
}
