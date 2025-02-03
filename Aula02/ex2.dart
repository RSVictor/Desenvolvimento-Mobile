// Importa a biblioteca dart:io
import 'dart:io'; //permite o usuario entrar com o com os dados

// Função principal do codigo
Run|Debug
void main(){
  print("Digite seu nome"); // Exibe mensagens solicitando que o usuario digite seu nome
  // null safety
  // só irá converter o dao se a entrada não for vazia
  String nome =stdin.readLineSync()!;
  print("Digite sua idade");
  String idade =stdin.readLineSync()!;

  print("Nome: $nome idade: $idade");
} 