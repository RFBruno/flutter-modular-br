import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_br/app/produto/produto_module.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Modular.args.params['nome'],
            ),
            TextButton(
              onPressed: () {
                var p = Modular.get<PrecoModel>();
                print(p.hashCode);
              },
              child: Text('Get PrecoModel'),
            ),
          ],
        ),
      ),
    );
  }
}
