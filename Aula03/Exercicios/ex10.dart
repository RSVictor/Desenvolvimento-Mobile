/* função com parametro nomeado obrigatorio */

// função com parametro obrigatorio
void criarUsuario ({required String nome, int? idade}){
  print("Usuario: $nome, Idade:$idade");
}

void main(){
  criarUsuario(nome: "Victor", idade: 30);
}