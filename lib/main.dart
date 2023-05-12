import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.yellow),
    debugShowCheckedModeBanner: false,
    title: "Palavras de Motivação",
    home: PaginaInicial(),
  ));
}

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  var _titulo = "Frase do Dia";
  var _frase = "essa é a frase";
  var _frases = [
    "Acredite em si mesmo e em tudo o que você é. Saiba que há algo dentro de você que é maior do que qualquer obstáculo.",
    "Não importa o quão devagar você vá, desde que você não pare.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Seja a mudança que você quer ver no mundo.",
    "Nunca desista de um sonho só por causa do tempo que você vai levar para realizá-lo. O tempo vai passar de qualquer forma.",
    "Você é capaz de fazer coisas incríveis se você se dedicar e persistir.",
    "Não deixe que os seus medos te impeçam de seguir os seus sonhos.",
    "A felicidade não é algo pronto. Ela é feita pelas suas próprias ações.",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "Você não pode mudar o vento, mas pode ajustar as velas do barco para chegar onde quer."
  ];
  var _numero = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(_titulo),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("imagens/logo.png"),
              Container(
                height: 1,
              ),
              Container(
                height: 120,
                child: Text(
                  _frase,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_numero < 9) {
                      _numero++;
                    } else {
                      _numero = 0;
                    }
                    _frase = _frases[_numero];
                    print("contruiu ");
                  });
                  print("aaaaaaaaaaaaaaaaaa");
                },
                child: Text("Nova Frase", style: TextStyle(fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}