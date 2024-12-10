import 'package:flutter/material.dart';

import 'main.dart';
import 'model/Animal.dart';

class CadastroAnimal extends StatefulWidget {
  @override
  _CadastroAnimalState createState() => _CadastroAnimalState();
}

class _CadastroAnimalState extends State<CadastroAnimal> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    // Inicializa os controllers para cada campo
    _controllers["nomePopular"] = TextEditingController();
    _controllers["habitat"] = TextEditingController();
    _controllers["peso"] = TextEditingController();
    _controllers["alimentacao"] = TextEditingController();
    _controllers["filo"] = TextEditingController();
    _controllers["classe"] = TextEditingController();
    _controllers["ordem"] = TextEditingController();
    _controllers["familia"] = TextEditingController();
    _controllers["genero"] = TextEditingController();
    _controllers["especie"] = TextEditingController();
    _controllers["descricao"] = TextEditingController();
    _controllers["imagem"] = TextEditingController();
  }

  @override
  void dispose() {
    // Limpa os controllers quando o widget for destruído
    _controllers.forEach((key, controller) {
      controller.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Animal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField("Nome Popular", "nomePopular"),
              _buildTextField("Habitat", "habitat"),
              _buildTextField("Peso", "peso"),
              _buildTextField("Alimentação", "alimentacao"),
              _buildTextField("Filo", "filo"),
              _buildTextField("Classe", "classe"),
              _buildTextField("Ordem", "ordem"),
              _buildTextField("Família", "familia"),
              _buildTextField("Gênero", "genero"),
              _buildTextField("Espécie", "especie"),
              _buildTextField("Descrição", "descricao", maxLines: 3),
              _buildTextField("URL da Imagem", "imagem"),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Salva os dados preenchidos pelos controllers
                    final novoAnimal = Animal(
                      nomePopular: _controllers["nomePopular"]!.text,
                      habitat: _controllers["habitat"]!.text,
                      peso: _controllers["peso"]!.text,
                      alimentacao: _controllers["alimentacao"]!.text,
                      filo: _controllers["filo"]!.text,
                      classe: _controllers["classe"]!.text,
                      ordem: _controllers["ordem"]!.text,
                      familia: _controllers["familia"]!.text,
                      genero: _controllers["genero"]!.text,
                      especie: _controllers["especie"]!.text,
                      descricao: _controllers["descricao"]!.text,
                      imagem: _controllers["imagem"]!.text,
                    );
                    animais.add(novoAnimal); // Adiciona o animal à lista global

                    // Redireciona para a tela inicial
                    Navigator.popUntil(context, (route) => route.isFirst);
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String key, {int maxLines = 1}) {
    return TextFormField(
      controller: _controllers[key], // Usa o controller para cada campo
      decoration: InputDecoration(labelText: label),
      maxLines: maxLines,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Por favor, preencha este campo";
        }
        return null;
      },
    );
  }
}