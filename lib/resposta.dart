import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionar;

  Resposta(this.texto, this.quandoSelecionar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       padding: const EdgeInsets.only(top: 10), 
      child: ElevatedButton(
        onPressed: quandoSelecionar,
        child: Text(texto),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Cor de fundo
          foregroundColor: Colors.white, // Cor do texto
        ),
      ),
    );
  }
}
