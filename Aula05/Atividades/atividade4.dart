// cria a classe produtos

class Produtos{
  String nome;
  int qtde;
  double preco;
  String tipo_comum;
  double consumo_kw;
  
  // Cria o construtor

  Produtos(this.nome, this.qtde, this.preco, this.tipo_comum, this.consumo_kw);
  
  // Cria o metodo para ligar o produto

  void ligar(){
    print("Produto ligado");
  }
}

// Classe chamada fritadeira

class Fritadeira extends Produtos{
  // construtor herdando parametros da classe pai

  Fritadeira(nome,qtde,preco,tipo_com,consumo_kw):super(nome,qtde,preco,tipo_com,consumo_kw);

  //polimorfismo Override
  @override
 void ligar(){
  print("Fritadeira ${nome} ligada");
 }
 void desligar(){
  print("Fritadeira ${nome} desligada");
 }

 void ajusta_temp(int temp){
  int setpoint = 250;
  if(temp>=250){
    print("Temperatura ajustada");
  }else{
    while(temp<250){
      temp = temp+10;
      print("Temperatura: ${temp}");
    }
    print("Temperatura ajustada: ${temp}");
  }
 }
}


class ArCondicionado extends Produtos{
  // construtor herdando parametros da classe pai

 ArCondicionado(nome,qtde,preco,tipo_com,consumo_kw):super(nome,qtde,preco,tipo_com,consumo_kw);

  //polimorfismo Override
  @override
 void ligar(){
  print("Ar condicionado ligado");
 }
 void desligar(){
  print("Ar condicionado desligado");
 }

 void ajusta_temp(int temp){
  int setpoint = 22;
  if(temp==setpoint){
    print("Temperatura ajustada");
  }else{
    while(temp<setpoint){
      temp = temp+2;
      print("Ajuste de temperatura: ${temp}");
    }
    print("Temperatura ok");
  }
 }
}

void main(){
  Fritadeira Philips  = Fritadeira("Philips", 1, 800.0,"wifi", 1.4);
  Philips.ligar();
  Philips.ajusta_temp(100);

  ArCondicionado LG = ArCondicionado("LG",1,3500.0,"Bluetooth", 3.5);
  LG.ligar();
  LG.ajusta_temp(0); 
}