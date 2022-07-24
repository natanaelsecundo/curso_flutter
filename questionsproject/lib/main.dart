import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsApp extends StatelessWidget {
  //widget raiz
  const QuestionsApp({Key? key}) : super(key: key);
  void answerquestion() {
    print("resposta");
  }

  void button() {}

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'cor favorita?',
      'animal favorito?',
      'comida favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: answerquestion,
              child: const Text('reposta 1'),
            ),
            Text(perguntas[1]),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () => print("REposta 2"),
              child: const Text('reposta 2'),
            ),
            Text(perguntas[2]),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Resposta 3");
              },
              child: const Text('reposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
