import 'dart:io';

void main() {
  print("Digite o primeiro número:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);
  
  double res = num1 * num2;
  
  print("Resultado = $res");
}
