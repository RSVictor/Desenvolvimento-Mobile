import 'dart:io'; // Corrigido o import

void main() {
  print("Digite o primeiro número");
  
  // var é um tipo de dado dinâmico que infere o tipo automaticamente
  var num1 = stdin.readLineSync()!;
  
  print("Digite o segundo número");
  var num2 = stdin.readLineSync()!;

  // Convertendo as entradas para inteiros e somando
  int res = int.parse(num1) + int.parse(num2);
  
  // Exibindo o resultado
  print("Resultado = $res");
}
