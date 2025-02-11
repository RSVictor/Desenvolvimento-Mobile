// Função assincrona

import 'dart:async';

Future<void> carregarDados()async{
  print ("Carregando");
  //Future.delayte atraso da resposta simulando uma api
  await Future.delayed(Duration(seconds: 2));
  print("Dados caregados");
}

void main()async{
  await carregarDados();
}