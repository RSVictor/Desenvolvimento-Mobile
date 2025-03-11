class Animal {
  // Atributos
  String nome;
  int idade;
  String cor;
  String raca;

  // Construtor
   // Construtor
  Animal({
    required this.nome,
    required this.idade,
    required this.cor,
    required this.raca,
  });

  // Método para exibir as informações do animal
  void mostrarInfo() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('Cor: $cor');
    print('Raça: $raca');
  }
}

void main() {
  // Criando um objeto da classe Animal
  Animal meuAnimal = Animal(
    nome: 'Rex',
    idade: 3,
    cor: 'Preto',
    raca: 'Labrador',
  );

  // Chamando o método para exibir as informações
  meuAnimal.mostrarInfo();
}
