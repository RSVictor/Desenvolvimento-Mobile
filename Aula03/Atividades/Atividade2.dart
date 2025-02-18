//Atividade 2
import 'dart:io';

 void main(){
   print("Digite o valor da base do triangulo");
    double base = double.parse(stdin.readLineSync()!);

     print("Digite a altura do triangulo");
  double altura = double.parse(stdin.readLineSync()!);

  double res = (base*altura)/2;
  
  print("Area do triangulo = $res");
 }