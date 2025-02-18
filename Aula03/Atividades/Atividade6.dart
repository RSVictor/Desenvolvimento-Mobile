// Atividade 6

import 'dart:io'; //Permite a entrada de dados cia 


void main(){
String nome1, nome2;
int  idade1, idade2;

print("Digite o primeiro nome: ");
nome1 = (stdin.readLineSync()!);

print("Digite o segundo nome: ");
nome2 = (stdin.readLineSync()!);

print("Digite a idade $nome1: ");
idade1 = int.parse(stdin.readLineSync()!);

print("Digite a idade $nome2: ");
idade2 = int.parse(stdin.readLineSync()!);

if(idade1 == idade2){
  print("Vocês tem a mesma idade!");
}else if(idade1 > idade2)
 print("$nome1 tem  $idade1 anos e é mais velho(a)!");
else{
  print("$nome2 tem  $idade2 anos é mais velho(a)!");
}
}
