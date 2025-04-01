import 'package:flutter/material.dart';

void main() {
  runApp(const TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "App: ContTech",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  String? _msg;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _exibemsg() {
    setState(() {
      _msg = "Victor";
    });
  }

  void _limpar() {
    setState(() {
      _msg = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Título do contador
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 60,
              color: Colors.black,
              child: const Text(
                "Contador",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          
          // Exibindo o valor do contador
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 60,
              color: Colors.black,
              child: Text(
                "$_counter", // Exibe o valor atual do contador
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          
          // Exibindo a mensagem
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 60,
              color: Colors.black,
              child: Text(
                "$_msg", // Exibe a mensagem armazenada
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),

          // Botões para interagir com o contador e mensagem
          Column(
            children: [
              ElevatedButton(
                onPressed: _incrementCounter, // Incrementa o contador
                child: const Text("Incrementar Contador"),
              ),
              ElevatedButton(
                onPressed: _resetCounter, // Reseta o contador
                child: const Text("Resetar Contador"),
              ),
              ElevatedButton(
                onPressed: _exibemsg, // Exibe a mensagem "Victor"
                child: const Text("Exibir Nome"),
              ),
              ElevatedButton(
                onPressed: _limpar, // Limpa a mensagem
                child: const Text("Limpar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
