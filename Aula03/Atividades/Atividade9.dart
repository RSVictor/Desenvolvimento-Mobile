import 'dart:io';

void main() {
  double kwh, total = 0.0;  
   String tipoResidencia = "";
  
  // Entrada de dados
  print("Qual a quantidade de KWh consumida? ");
  kwh = double.parse(stdin.readLineSync()!);

  print("Escolha o tipo de imovel: 1 = residencia | 2 = comercial | 3 = industrial");
  int tipoImovel = int.parse(stdin.readLineSync()!);

  // Lógica para calcular 
    if (tipoImovel == 1) {  // Residencial
     tipoResidencia = "Residencial";
    if (kwh <= 500) {
      total = kwh * 0.50;
    } else {
      total = kwh * 0.70;
    }
  } else if (tipoImovel == 2) {  // Comercial
    tipoResidencia = "Comercial";
    if (kwh <= 1000) {
      total = kwh * 0.65;
    } else {
      total = kwh * 0.60;
    }
  } else if (tipoImovel == 3) {  // Industrial
    tipoResidencia = "Industrial";
    if (kwh <= 5000) {
      total = kwh * 0.55;
    } else {
      total = kwh * 0.50;
    }
  } else {
    print("Opção de imóvel inválida.");
    return;  // Se o tipo de imóvel for inválido, retorna da função
  }


  // Exibir o valor a pagar com o desconto
  print("O valor a pagar no imovel $tipoResidencia é R\$ ${total.toStringAsFixed(2)}.");
}
