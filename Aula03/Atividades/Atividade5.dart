// Atividade 5

import 'dart:io';
void main(){
  double n1, n2, n3, res;

  print("Digite a primeira nota: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite a segunda nota: ");
  n2 = double.parse(stdin.readLineSync()!);
  print("Digite a terceira nota: ");
  n3 = double.parse(stdin.readLineSync()!);

  res = (n1+n2+n3)/3;
  String mediaFormatada = res.toStringAsFixed(2);

 
  if(res >= 7){
    print("APROVADO: Média $mediaFormatada");
  }
  else if (res >= 4 && res < 7){
     print("EXAME: Média $mediaFormatada");
  }
  else{
    print("REPROVADO: Média: $mediaFormatada");
  }
}