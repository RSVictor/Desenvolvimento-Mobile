import 'dart:io';

void main() {
  double desconto = 0.0, litros = 0.0, total = 0.0;
  double valorEtanol = 1.70; // Preço do litro do Etanol
  double valorGasolina = 4.50; // Preço do litro da Gasolina
  double valorDiesel = 2.00; // Preço do litro do Diesel
  
  // Entrada de dados
  print("Qual a quantidade de litros será abastecido? ");
  litros = double.parse(stdin.readLineSync()!);

  print("Escolha o tipo de combustível: 1 = Etanol | 2 = Gasolina | 3 = Diesel");
  int tipoCombustivel = int.parse(stdin.readLineSync()!);

  // Lógica para calcular o desconto
  if (litros >= 15) {
    if (tipoCombustivel == 1) { // Etanol
      desconto = valorEtanol * litros * 0.04; // 4% de desconto
    } else if (tipoCombustivel == 2) { // Gasolina
      if (litros >= 20) {
        desconto = valorGasolina * litros * 0.03; // 3% de desconto se for >= 20 litros
      } else {
        desconto = 0; // Sem desconto se for menor que 20 litros
      }
    } else if (tipoCombustivel == 3) { // Diesel
      desconto = valorDiesel * litros * 0.05; // 5% de desconto
    } else {
      print("Opção de combustível inválida.");
      return;
    }
  } else {
    if (tipoCombustivel == 1) { // Etanol
      desconto = valorEtanol * litros * 0.03; // 3% de desconto
    } else if (tipoCombustivel == 2) { // Gasolina
      desconto = 0; // Sem desconto para gasolina se for menor que 15 litros
    } else if (tipoCombustivel == 3) { // Diesel
      desconto = valorDiesel * litros * 0.03; // 3% de desconto
    } else {
      print("Opção de combustível inválida.");
      return;
    }
  }

  // Calcular o valor total a pagar com desconto
  if (tipoCombustivel == 1) { // Etanol
    total = (valorEtanol * litros) - desconto;
  } else if (tipoCombustivel == 2) { // Gasolina
    total = (valorGasolina * litros) - desconto;
  } else if (tipoCombustivel == 3) { // Diesel
    total = (valorDiesel * litros) - desconto;
  }

  // Exibir o valor a pagar com o desconto
  print("O valor a pagar, com o desconto de R\$ ${desconto.toStringAsFixed(2)}, é R\$ ${total.toStringAsFixed(2)}.");
}
