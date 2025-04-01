import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      flexibleSpace: Center(
        child: Text(
          "App Campo endereço",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
    body: Campotexto(),
  );
}
}
class Campotexto extends StatefulWidget{
  const Campotexto({super.key});
  
  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // declara variavel do tipo TextEdittingController
  TextEditingController nome = TextEditingController();
  TextEditingController endereco = TextEditingController();
  TextEditingController cidade= TextEditingController();
  TextEditingController numero = TextEditingController();
  _limpar(){
    setState(() {
      nome.text="";
      endereco.text="";
      cidade.text ="";
      numero.text ="";
    }); 
}

@override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: "Digite seu nome",
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
          controller: nome,
        ),

      TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: "Digite endereço",
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
          controller: endereco,
        ),

         TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: "Digite sua cidade",
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
          controller: cidade,
        ),

         TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Digite o número",
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          ),
          controller: numero,
        ),

      Row(      
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           ElevatedButton(
        onPressed: (){
          print("Nome ${nome.text}");
          print("Endereço ${endereco.text}");
          print("Cidade ${cidade.text}");          
          print("Número ${numero.text}");
          setState((){
            nome.text;
            endereco.text;
            cidade.text;
            numero.text;
          });                  
          
        },
       child: Text(
        "Exibir"
        ),),
      ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
      ],
      ),

      Stack(
        alignment:Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
              ),
              width: 400,
              height: 120,                 
              child: Center(
              child: Text(
                "${nome.text} \n ${endereco.text} \n ${cidade.text} \n ${numero.text}",
                 textAlign: TextAlign.center,
                 style:  TextStyle(fontSize: 18, color: Colors.white),),
               ),
               ),
             ),    
           ],
          )
        ]
      );
     }
   }
