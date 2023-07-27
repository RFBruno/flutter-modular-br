import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/:nome',
          child: (context, args) => const ProdutoPage(),
        ),
      ];
}
