/* Receber dois numeros decimais recebidos pelo usuario e calcular a media deles*/

import 'dart:io';
void main(){
  double n1,n2, res;
  print("Digite o primeiro numero");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o segundo numero");
  n2 = double.parse((stdin.readLineSync()!));

  res = (n1+n2)/2;
  print("Média $res");

  if(res>=5){
    print("Aprovado - media $res");
  }
  else{
    print("Reprovado - media: $res");
  }
}