import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaApp(),
  ));
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("App: Aula 08 - Exercicio",        
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Container(   
          alignment: Alignment.center,           
            width: 300,
            height: 50,
            color: Colors.black,
            child: Text(
              "Mobile",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ),
           SizedBox(
            height: 20,
          ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [  
            Container(           
            width: 60,
            height: 60,
            color: Colors.black,           
            ),
            Container(           
            width: 60,
            height: 60,
            color: Colors.black,           
            ),
            Container(           
            width: 60,
            height: 60,
            color: Colors.black,           
            )
            ]         
          ),
        SizedBox(
            height: 20,
          ),
           Container(       
            alignment: Alignment.center,    
            width: 300,
            height: 50,
            color: Colors.black,
            child: Text(
              "Victor",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ),
        ],
      ),
    );
  }
}
