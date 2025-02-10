/* Exemplo 3 - Switch Case */

import 'dart:io';

void main(){
  double n1,n2, res; // variaveis para armazenar valores digitados pelo usuario
  var op; // variavel para armazaenar a opcao do usuario
  print('+ soma');
  print('- Subtração');
  print('* Multiplicação');
  print('/ Divisão');
  print("Digite o numero n1");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o numero n2");
  n2 = double.parse(stdin.readLineSync()!);
  print("'Escolha a operação desejada:");
  op = stdin.readLineSync()!;
  switch(op){
    case '+':
    res =  n1+n2;
    print("Resultado: $res");
    break;
     case '-':
    res =  n1-n2;
    print("Resultado: $res");
    break;
     case '*':
    res =  n1+n2;
    print("Resultado: $res");
    break;
    case '/':
  if(n2!=0){
  res = n1/n2;
  print("Resultado: $res");
  }
  else{
    print("Divisao por zero tende ao infinito, digite um valor para n2");
  }
  break;
  default: print("Operção invalida");
  }
  
}
