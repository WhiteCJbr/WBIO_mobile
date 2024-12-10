import 'package:flutter/material.dart';
import 'MainNavigation.dart';
import 'model/Animal.dart';

void main() {
  runApp(MyApp());
}

// Lista global para armazenar os animais
List<Animal> animais = [
  Animal(
    nomePopular: "Jaguatirica",
    habitat: "Mata Atlântica",
    peso: "8-16kg",
    alimentacao: "Carnívoro",
    filo: "Chordata",
    classe: "Mammalia",
    ordem: "Carnivora",
    familia: "Felidae",
    genero: "Leopardus",
    especie: "pardalis",
    descricao: "Jaguatirica é um felino ágil encontrado em florestas tropicais.",
    imagem: "https://s5.static.brasilescola.uol.com.br/be/2023/01/jaguatirica-em-um-ambiente-vegetacional.jpg",
  ),
  Animal(
      nomePopular: "Urso Panda",
      habitat: "Florestas de Bambu",
      peso: "70 – 120 kg",
      alimentacao: "Herbívoro",
      filo: "Chordata",
      classe: "Mammalia",
      ordem: "Carnivora",
      familia: "Ursidae",
      genero: "Ailuropoda",
      especie: "melanoleuca",
      descricao: "É um mamífero de grande porte, com pelagem branca e preta, e que se caracteriza por ser herbívoro e pacífico",
      imagem: "https://static.biologianet.com/2020/03/shutterstock-546638455.jpg"
  )
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wikipedia Biologica',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainNavigation(),
    );
  }
}



