// Atividade 1


import 'dart:io'; //Permite a entrada de dados cia 


void main(){

String nome;
String curso;
int idade;

print("Digite seu nome");
nome = (stdin.readLineSync()!);
print("Digite seu curso");
curso = (stdin.readLineSync()!);
print("Digite sua idade");
idade = int.parse(stdin.readLineSync()!);

print("Nome: $nome Curso: $curso idade: $idade");
}