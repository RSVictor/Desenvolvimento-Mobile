// cria a classe produtos

class Maquinas{
  String nome;
  int qtdeEixo;
  double rotacao;  
  double consumo_kw;
  
  // Cria o construtor

  Maquinas(this.nome, this.qtdeEixo, this.rotacao, this.consumo_kw);
  
  // Cria o metodo para ligar o produto

  void ligar(){
    print("Produto ligado");
  }
}

// Classe chamada fritadeira

class Furadeira extends Maquinas{
  // construtor herdando parametros da classe pai

  Furadeira(nome,qtdeEixo,rotacao,consumo_kw):super(nome,qtdeEixo,rotacao,consumo_kw);

  //polimorfismo Override
  @override
 void ligar(){
  print("Furadeira ${nome} ligada");
 }
 void desligar(){
  print("Furadeira ${nome} desligada");
 }

 void ajusta_rot(int rot){
  int setpoint = 100;
  if(rot>=100){
    print("Rotação ajustada");
  }else{
    while(rot<100){
      rot = rot+10;
      print("Rotação: ${rot}");
    }
    print("Rotação ajustada: ${rot}");
  }
 }
}



void main(){
  Furadeira Bosch  = Furadeira("Bosch", 1, 40.0, 1.4);
  Bosch.ligar();
  Bosch.ajusta_rot(1);


}