

import 'package:flutter/material.dart';
import 'package:tela1/SecondRoute.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       appBar:  AppBar(title: const Text("MYSTERIUM"),backgroundColor:const Color.fromARGB(255, 37, 35, 35),centerTitle:true),
       backgroundColor: const Color.fromARGB(255, 86, 83, 83),
        drawer: Drawer(
           child: Container(
    color: const  Color.fromARGB(255, 103, 102, 104),
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            
            const UserAccountsDrawerHeader(
           decoration: BoxDecoration(
                color: Color.fromARGB(255, 109, 110, 110),
              ),
              accountEmail: Text("user@mail.com"),
              accountName: Text("Seu zé"),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
                ),
            ),
            ListTile(
              title: const Text("Opção 1"),
           onTap: () {
             
           },
            ),
            ListTile(
              title: const Text("Opção 2"),
              onTap: () {
             
           },
            ),
            ListTile(
              title: const Text("Opção 3"),
            onTap: () {
             
           },
            ),
            ListTile(
              title: const Text("Opção 4"),
            onTap: () {
             
           },
            ),
            ListTile(
              title: const Text("Opção 5"),
            onTap: () {
             
           },
            ),
            ListTile(
              title: const Text("Opção 6"),
            onTap: () {

           },
            ),
          ],
        ),
      ),
        ), 
        
        body:  ListView(
          children: [
             Container(
              height:76,
            ),
             Row(
              children: [
                 Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondRoute()),
            ),
                    child:  Card(
                      elevation: 0,
                    color: Colors.transparent,
                    child:  SizedBox(
                    
                                  height: 350,
                      child:  Column(
                        children: [
                           const Expanded(child: Image(
                            image: AssetImage('assets/it.jpg'),
                            //width: 300,
                            //height: 150,
                            //fit:BoxFit.fill,
                          )),
                          Text("faca"),
                        ],
                      ),
                    ),
                                  ),
                  )),
                  Expanded(child:  GestureDetector(
                    onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondRoute()),
            ),
                    child: Card(
                    elevation: 0,
                    color: Colors.transparent,
                                child: SizedBox(
                                   
                              height: 350,
                                  child: Column(
                    children: [
                       Image(
                            image: AssetImage('assets/panico.jpg'),
                            width: 300,
                            height: 330,
                          fit:BoxFit.fill,
                          ),
                      Text("faca"),
                    ],
                                  ),
                                ),
                              ),
                  )),
              ],
           
            ),
           
          ],
        ),
      ),
    );
  }
}
