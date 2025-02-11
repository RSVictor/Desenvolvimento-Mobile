/* função com parametro nomeado obrigatorio */

// função com parametro obrigatorio
void criarUsuario (int? idade, {required String nome}){
  print("Nome: $nome idade: $idade");
}

void main(){
  criarUsuario(30, nome:"Victor");
}