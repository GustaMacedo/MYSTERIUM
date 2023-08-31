import 'package:flutter/material.dart';
import 'package:tela1/inicial.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(SecondRoute());
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar:  AppBar(title: const Text("MYSTERIUM"),backgroundColor:const Color.fromARGB(255, 37, 35, 35),centerTitle:true),
       backgroundColor: const Color.fromARGB(255, 86, 83, 83),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Escolha 1'),
            ),
            SizedBox(width: 270), // Espaço entre os elementos
            Container(
              width: 500,
              height: 600,
              color: Color.fromARGB(255, 139, 12, 12), // Cor do retângulo
            ),
            SizedBox(width: 270), // Espaço entre os elementos
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Escolha 2 '),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("MYSTERIUM"),backgroundColor:const Color.fromARGB(255, 37, 35, 35),centerTitle:true),
       backgroundColor: const Color.fromARGB(255, 86, 83, 83),
      body: Center(
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Escolha 1'),
            ),
            SizedBox(width: 270), // Espaço entre os elementos
            Container(
              width: 500,
              height: 600,
              color: Color.fromARGB(255, 139, 12, 12), // Cor do retângulo
            ),
            SizedBox(width: 270), // Espaço entre os elementos
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Escolha 2 '),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("MYSTERIUM"),backgroundColor:const Color.fromARGB(255, 37, 35, 35),centerTitle:true),
       backgroundColor: const Color.fromARGB(255, 86, 83, 83),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Conteúdo da Página 2'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta à página anterior
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
