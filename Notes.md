## Exemplo de estrutura base do Main.dart de um projeto flutter

```
import 'package:flutter/material.dart'; // Necessario para executar o runApp()

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(color: Colors.white),
  ));
}
```

# Widgets 

São componentes que podem ser utilizados para montar a interface de um APP.

Exemplos de componentes:
- Widget catalog: https://docs.flutter.dev/development/ui/widgets
- Basic Widgets: https://docs.flutter.dev/development/ui/widgets/basics
- Assets, Images, anf icon Widgets: https://docs.flutter.dev/development/ui/widgets/assets


## Container
Estrutura utilizada para inserir componentes dentro dela. Caso o conteudo seja texto, o conteudo é quebrado para a proxima linha automaticamente caso ultrapasse o limite do container.

## Exemplo de coluna em um projeto Flutter 
```
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Column(
      // Coluna
      children: [
        Text("Texto 1"),
        Text("Texto 2"),
        Text("Texto 3"),
        Text("Texto 4"),
      ],
    ),
  ));
}
```

## Exemplo de Linha em um projeto Flutter 
```
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Row(
      // Linha
      children: [
        Text(" T1 "),
        Text(" T2 "),
        Text(" T3 "),
      ],
    ),
  ));
}
```

# Material Design

- Documentação: https://material.io/

# NOTAS

## Textos

### FontWeight (TextStyle)
Bold: Negrito
w100 a w900: controle de peso da fonte (espessura)

### Exemplo de decoração de texto
```
Text(
  "TEXTO EXEMPLO",
  textAlign: TextAlign.justify, // Alinhando texto a esquerda
  style: TextStyle(
      decoration: TextDecoration.none, // Removendo o decorador padrão do texto
      letterSpacing: 0, // Espaço entre as letras
      fontSize: 20  // Tamanho da fonte
  )
);
``` 

## Exemplos de formatação de texto e decoradores
```
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        // Child permite que apenas um elemento seja definido
        children: const [
          // children permite que mais de um elemento seja definido
          Text(
            "\n\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.",
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.normal,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              letterSpacing: 0, // Espaço entre as letras
              wordSpacing: 0, // Espaço entre as palavras
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
    ),
  ));
}
```

## Espaçamentos
```
void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      
      // ESPAÇAMENTOS

      /* Definir espaçamento INTERNO de um contaiter */
      //EX1:
      padding: const EdgeInsets.all(30),  // Defindo 30 pixels de espaçamento para os quatro lados do container
      
      //EX2:
      // Define um espeçamento interno para os quatro lados do container, o valor de cada lado deve ser inserido manualmente
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                                  // left, top, right, bottom

      /* Definir espaçamento EXTERNO de um contaiter */
      //EX1:
      margin: EdgeInsets.all(30), // Defindo 30 pixels de espaçamento para os quatro lados do container
      
      //EX2:
      margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
      
      //EX3:
      /* only permite aplicar o espaçamento apenas nos lados necessarios, sem precisar especificar as medidas das outras posições */
      margin: const EdgeInsets.only(top: 50, left: 50),  // Também funciona no padding


      // ADICIONANDO BORDA EXTERNA NO CONTAINER
      decoration: BoxDecoration(
        // Borda externa nos 4 cantos do container com largura de 3px e cor branca
        border: Border.all(width: 5, color: Colors.white),
      ),



      child: Column(  // Child permite que apenas um elemento seja definido
        children: const <Widget>[ // children permite que mais de um elemento seja definido
          // ESPAÇAMENTO DIRETAMENTE NO WIDGET
          Text("t1"),

          // WIDGET PADDING para espaçamento ao redor do texto do texto
          Padding(
              padding: EdgeInsets.all(30),
              child: Text("t2")),

          Text("t3"),
        ],
      ),
    ),
  ));
}
```

## Ocultar aviso de debug mode

```debugShowCheckedModeBanner: false```

