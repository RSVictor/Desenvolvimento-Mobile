// Atividade 3

import 'dart:io';

void main(){
  print("Digite o salario bruto");
  double salario = double.parse(stdin.readLineSync()!);

  double desconto = salario-(salario*0.1);
  double bonus = (salario*0.20)+ salario;
  print("Salario  liquido a receber com desconto de 10% $desconto");
  print("Salario com bonus $bonus");
}
