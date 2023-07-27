import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatelessWidget {
  const CategoriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Text(
          Modular.args.data
        ),
      ),
    );
  }
}
