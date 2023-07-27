import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/categoria', arguments: '### Categoria enviada args data ###');//navigator sem cotexto implementado pelo modular
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/produto/produto_X');
              },
              child: const Text('Produto Module'),
            ),
          ],
        ),
      ),
    );
  }
}
