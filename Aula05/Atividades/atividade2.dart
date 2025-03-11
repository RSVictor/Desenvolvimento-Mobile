// Classe mãe (Animal)
class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  Animal({
    required this.nome,
    required this.idade,
    required this.cor,
    required this.raca,
  });

  void mostrarInfo() {
    print('Nome: $nome');
    print('Idade: $idade anos');
    print('Cor: $cor');
    print('Raça: $raca');
  }
}

// Classe filha (AnimalFilho) que herda de Animal
class AnimalFilho extends Animal {
  String tipo; // Tipo de animal (pássaro, cachorro, tigre, peixe)
  double peso; // Atributo peso

  // Construtor da classe filha
  AnimalFilho({
    required String nome,
    required int idade,
    required String cor,
    required String raca,
    required this.tipo,
    required this.peso,
  }) : super(nome: nome, idade: idade, cor: cor, raca: raca); // Chama o construtor da classe mãe

  // Métodos específicos da classe filha

  void acordou() {
    print('$nome acordou! Hora de começar o dia!');
  }

  void dormiu() {
    print('$nome foi dormir. Boa noite!');
  }

  // Método para exibir informações do tipo de animal
  void mostrarTipo() {
    print('Tipo de animal: $tipo');
    print('Peso: $peso kg');
  }
}

void main() {
  // Criando objetos de tipos diferentes de animais
  AnimalFilho passarinho = AnimalFilho(
    nome: 'Pipoca',
    idade: 1,
    cor: 'Amarelo',
    raca: 'Canário',
    tipo: 'Pássaro',
    peso: 0.05,
  );
  
  AnimalFilho cachorro = AnimalFilho(
    nome: 'Rex',
    idade: 3,
    cor: 'Preto',
    raca: 'Labrador',
    tipo: 'Cachorro',
    peso: 10.0,
  );

  AnimalFilho tigre = AnimalFilho(
    nome: 'Rajá',
    idade: 5,
    cor: 'Laranja com listras pretas',
    raca: 'Bengal',
    tipo: 'Tigre',
    peso: 180.0,
  );

  AnimalFilho peixe = AnimalFilho(
    nome: 'Nemo',
    idade: 2,
    cor: 'Laranja',
    raca: 'Peixe-palhaço',
    tipo: 'Peixe',
    peso: 0.03,
  );

  // Chamando os métodos de cada animal
  passarinho.mostrarInfo();
  passarinho.mostrarTipo();
  passarinho.acordou();
  passarinho.dormiu();
  print('\n');

  cachorro.mostrarInfo();
  cachorro.mostrarTipo();
  cachorro.acordou();
  cachorro.dormiu();
  print('\n');

  tigre.mostrarInfo();
  tigre.mostrarTipo();
  tigre.acordou();
  tigre.dormiu();
  print('\n');

  peixe.mostrarInfo();
  peixe.mostrarTipo();
  peixe.acordou();
  peixe.dormiu();
  print('\n');
}
