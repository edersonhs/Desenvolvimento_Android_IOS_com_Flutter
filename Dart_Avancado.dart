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

// ---------------------------------------------------------------------------

// DEFININDO UMA INTERFACE
/*
abstract class Presidenciavel {
  void participarEleicao();
} // interface para obrigar uma subclasse herdeira a utilizar o metodo ParticiparEleicao

class Cidadao {
  void direitosDeveres() {
    print("Todo cidadão tem direitos e deveres.");
  }
}

class Obama extends Cidadao implements Presidenciavel {
  // Classe herdeira de Cidadão e da interfacce Presidencial
  void participarEleicao() {
    //  Obrigatoria implementação por causa da interface
    print("Participar eleição dos Estados Unidos");
  }
}

class Jamilton extends Cidadao {}
*/

// ---------------------------------------------------------------------------

// COLEÇÕES E LISTAS
/*
class Usuario {
  String nome;
  int idade;

  Usuario(this.nome, this.idade);
}
*/

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

  // --------
  // DEFININDO UMA INTERFACE
  // Obama obama = Obama();
  // obama.participarEleicao();

  // --------
  // COLEÇÕES E LISTAS
  // List frutas = ["Morango", "Manga"];
  // print(frutas);

  // List<String> frutas = [
  //   "Morango",
  //   "Manga"
  // ]; // lista com especificação de tipo de itens que serão recebidos

  // OPERAÇÕES UTILIZANDO METODOS
  // Adicionando mais um elementos ao fim da lista
  // frutas.add("Melancia");
  // Adicionando um novo elemento em uma posição especifica, nesse caso na primeira posição.
  // frutas.insert(0, "Amora");
  // Removendo um item pela posição do mesmo na lista
  // frutas.removeAt(1);

  // Verifica se a lista contem "Amora" e retorna true ou false
  // print(frutas.contains("Morango"));

  // Verificando o tamanho da lista e retornando o total]
  // print(frutas.length);

  // List<Usuario> usuarios = []; // Lista de objetos do tipo Usuario(classe)

  // Usuario usuario = Usuario("Jamilton", 30);
  // usuarios.add(usuario); // adicionando o objeto de usuario na lista.

  // FORMA SIMPLIFICADA DE FAZER O BLOCO DE CÓDIGO ACIMA:
  // usuarios.add(Usuario("Ederson", 22));
  // usuarios.add(Usuario("José", 45));
  // usuarios.add(Usuario("Maria", 20));

  // Para printar a lista de objetos deve-se percorrer a mesma, da seguinte forma:
  // for (Usuario usuario in usuarios) {
  //   print("Nome: ${usuario.nome} idade: ${usuario.idade}");
  // }

  // MAPAS - É semelhante a uma lista entretanto é possivel definir a chave também
  // Declaração
  // Map estados = Map();

  // Declaração definindo o tipo da chave e do valor
  Map<String, String> estados = Map();
  estados["SP"] = "São Paulo";
  estados["MG"] = "Minas Gerais";
  estados["RJ"] = "Rio de Janeiro";

  // PRINT
  print(estados);
  estados.forEach((chave, valor) => print("$chave - $valor"));
}
