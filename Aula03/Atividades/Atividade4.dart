//Atividade4
import 'dart:io';

void main(){
  double n1, res;
  var op;

  print("Digite o valor em Reais a ser convertido: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Escolha a moeda 1 = Euro(EUR), 2 = Dolár(USD) ou 3 = Franco Suiço(CHF): ");
  
  op = stdin.readLineSync()!;

  switch(op){
    case '1':
    res = n1 * 7.00;
    print("$n1 Reais  em euro equivale a $res (EUR)");
    break;
     case '2':
    res = n1 * 6.56;
    print("$n1 Reias em dolar equivale a $res (USD)");
    break;
     case '3':
    res = n1 * 7.00;
    print("$n1 Reais em franco Suiço equivale a $res (CHF)");
    break;

  }
}