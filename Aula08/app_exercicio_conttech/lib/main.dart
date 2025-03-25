import 'package:flutter/material.dart';

void main() {
  runApp(const TelaApp()
  );
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App: ContTech",
          style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
        ),
        body: Home(),
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

  void _incrementCounter() {
    setState(() {    
      _counter++;
    });
  }
  void _resetCounter(){
    setState((){
      _counter=0;
    });

  }

  String? _msg; // cria uma variavel chamada _msg

   // função para exibir mensagem
   _exibemsg(){
    setState(() {
      _msg ="Victor";
    });
   }

      // função para limpar o campo de mensagem
  _limpar(){
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
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(alignment: Alignment.center,
            width: 200,height: 60,color: Colors.black,
          // ${_msg} acessa o conteudo da variavel _msg
          child:Text("Contador",
          textAlign: TextAlign.center,
          style: 
          TextStyle(
            fontSize: 30,
            color:
             Colors.white),),),
             ),
          
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(alignment: Alignment.center,
            width: 200,height: 60,color: Colors.black,
          // ${_msg} acessa o conteudo da variavel _msg
          child:Text("${_msg}",
          textAlign: TextAlign.center,
          style: 
          TextStyle(
            fontSize: 30,
            color:
             Colors.white),),),
             ),

             Column(
              children: [               
                 ElevatedButton(onPressed: _exibemsg, child: Text("Exibir nome ")),
                  ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
              ],
             )
        ],
      ),
    );
  }
}