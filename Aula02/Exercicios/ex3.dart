import 'dart:io';

void main() {
  // Solicitando o primeiro número
  print("Digite o primeiro número");
  int num1 = int.parse(stdin.readLineSync()!); // Corrigido o erro na declaração

  // Solicitando o segundo número
  print("Digite o segundo número");
  int num2 = int.parse(stdin.readLineSync()!); // Corrigido para int para fazer a conversão corretamente

  // Calculando o resultado da soma
  int res = num1 + num2;
  
  // Exibindo o resultado
  print("Resultado = $res");
}
