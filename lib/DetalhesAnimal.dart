import 'package:flutter/material.dart';
import 'model/Animal.dart';

class DetalhesAnimal extends StatelessWidget {
  final Animal animal;

  DetalhesAnimal({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.nomePopular),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              animal.imagem,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.broken_image,
                  size: 200,
                  color: Colors.grey,
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              "Nome Popular: ${animal.nomePopular}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text("Habitat: ${animal.habitat}"),
            Text("Peso: ${animal.peso}"),
            Text("Alimentação: ${animal.alimentacao}"),
            Text("Filo: ${animal.filo}"),
            Text("Classe: ${animal.classe}"),
            Text("Ordem: ${animal.ordem}"),
            Text("Família: ${animal.familia}"),
            Text("Gênero: ${animal.genero}"),
            Text("Espécie: ${animal.especie}"),
            SizedBox(height: 16),
            Text(
              "Descrição:",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              animal.descricao,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
