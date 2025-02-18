// Atividade 7

import 'dart:io'; 

void main(){
 
 double carro1, carro2, carro3;
 String modelo1, modelo2, modelo3;

print("Digite o modelo do primeiro carro: ");
modelo1 = (stdin.readLineSync()!);

print("Digite o modelo do segundo carro: ");
modelo2 = (stdin.readLineSync()!);

print("Digite o modelo do terceiro carro: ");
modelo3 = (stdin.readLineSync()!);

 print("Digite o valor do $modelo1: ");
 carro1 = double.parse((stdin.readLineSync()!));

 print("Digite o valor do $modelo2: ");
 carro2 = double.parse((stdin.readLineSync()!));

  print("Digite o valor do $modelo3 : ");
 carro3 = double.parse((stdin.readLineSync()!));


 if(carro1 > carro2 && carro1 > carro3){
  print("O carro $modelo1  tem o valor de $carro1 e é o mais caro! ") ;
 }else if(carro2 > carro1 && carro2 > carro3){
    print("O carro $modelo1 tem o valor de $carro2 e é o mais caro! ") ;
 }else{
  print("O caroo $modelo1 tem o valor de $carro3 e é o mais caro! ") ;
 }
}