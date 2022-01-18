/*
// SOBRESCRITA DE METODOS E CHAMADAS DE CONSTRUTORES DA CLASSE PAI

abstract class Animal {
  String cor;

  Animal(this.cor); // construtor de animal

  void dormir() {
    print("Dormir");
  }

  void correr() {
    print("Correr como um ");
  }
}

class Cao extends Animal {
  // HERDEIRA DE ANIMAL
  String corOrelha;

  Cao(String cor, this.corOrelha)
      : super(
            cor); // contrutor de cao seta uma cor para a variavel "cor" de Animal

  void latir() {
    print("Latir");
  }

  @override // sobrescrevendo o metodo correr herdado de animal
  void correr() {
    super
        .correr(); // super é a classe mãe, ou seja, o metodo correr de animal será executado
    print("cão");
  }
}

class Passaro extends Animal {
  String corBico;

  Passaro(String cor, this.corBico)
      : super(
            cor); // Primeiro parametro para a varivael cor de Animal e o segundo para a variavel local

  void voar() {
    print("Voar");
  }

  @override
  void correr() {
    print(
        "Correr como um passaro"); // super é a classe mãe, ou seja, o metodo correr de animal será executado
  }
}
*/ // ------------------------------------------------------------------------

// CLASSES ABSTRATAS - Servem apenas para estabelecer uma relação
// de herança, não sendo instanciada (Animal é um exemplo). Para uma classe
// ser definida como abstrata basta informar abstract na declaração.

// ---------------------------------------------------------------------------

// MODIFICADORES STATIC E FINAL
//STATIC normalmente é utilizando quando deseja-se criar um elemento inconstante
//FINAL é utilizado quando deseja-se criar um elemento contante.
/*
class Configuracoes {
  String key;

  Configuracoes(this.key);

  static String identificadorApp = "JLADS824782394"; // variavel static

  static void configuracaoInicial() {
    print("Executa configurações iniciais");
  }
}*/

void main() {
  // SOBRESCRITA DE METODOS E CHAMADAS DE CONSTRUTORES DA CLASSE PAI
  //Cao cao = Cao('marrom', 'teste');

  //print(cao.corOrelha);

  // --------
  // MODIFICADORES STATIC E FINAL
  // print(Configuracoes.identificadorApp);
  // Quando um elemento for static não é necessario instanciar a classe. Basta
  // utilizar conforme exemplo acima

  // Configuracoes.configuracaoInicial(); // Acessando método estatico

  // final Configuracoes config = Configuracoes("ARTX");
  // print(config.key);

  // config = Configuracoes("000")  // Cp,p fpo declarado como final anteriormente
  // não é possivel alterar
}
