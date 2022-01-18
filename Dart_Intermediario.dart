/* FUNÇÕES
 String exibirDados(String nome, {int idade, double altura} ){  // Conteudo entre chaves é opcional
  int novaIdade = idade ?? 0; // ?? é o operador nulo, ou seja, caso a ideade seja nula o valor informado será zero
  double novaAltura = altura ?? 0;
  print("Olá $nome sua idade: $novaIdade sua altura: $novaAltura ");
}

PASSANDO UMA FUNÇÃO COMO PARAMETRO DE OUTRA FUNÇÃO
String exibirDados(String nome, Function funcao){
  print("Olá $nome");
  funcao();

void calcularBonus(){
  print("Bônus calculado");
}*/

/* CLASSES
class Animal {
  String cor;
  
  Animal(String cor){  // construtor de animal
    this.cor = cor;  // this corresponde a este atributo da classe
  }
  
  Animal(this.cor);  // forma simplificada de fazer o construtor
  
  //NAMED CONSTRUCTOR - Construtor nomeado
  Animal.jabuti(this.cor){
    print("Construtor do Jabuti"); 
  }
  
  void dormir(){
    print("Dormir");
  }
}



// HERANÇAS
class Cao extends Animal {   // A classe cão herda os atributos da Animal com o extends
  
  String corOrelha;
  
  void latir(){
    print("Latir");
  }
  
}

class Passaro extends Animal {   // A classe Passaro herda os atributos da Animal com o extends
  
  String corBico;
  
  void voar(){
    print("Voar");
  }
  
}
*/

// GETTERS / SETTERS - Utilizados para proteger os atributos da classe
class Conta {
  double _saque = 0; // por convenção o _ torna a variavel "privada"

  double get saque {
    //Validações antes do saque ser retornado

    return this._saque;
  }

  set saque(double saque) {
    // Valida o saldo de saque antes de alterar o valor
    if (saque > 0 && saque <= 500) {
      this._saque = saque;
    }
  }
}

void main() {
  // Getters/Setters
  Conta conta =
      Conta(); // Instanciando a classe conta (e também criando objeto conta)
  conta.saque = 900;

  print(conta.saque);

  /* Classes, construtores e herança
  Cao cao = Cao();
  cao.dormir();
  cao.latir();*/
  //Animal animal = Animal("Marrom");
  //Animal animal = Animal.jabuti("Marrom");
  //animal.cor = "Marrom";
  //animal.dormir();
  //print(animal.cor);

  /* FUNÇÕES ANONIMAS
  exibirDados("Jamilton", (){       // A função anonima tem a sintaxe = "(){}"
    print("Bônus calculado");
  } );
  */
}
