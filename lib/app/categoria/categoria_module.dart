import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/categoria/categoria_page.dart';

class CategoriaModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const CategoriaPage(),
        ),
      ];
}
