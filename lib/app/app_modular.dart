import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/categoria/categoria_module.dart';
import 'package:flutter_modular_br/app/produto/produto_module.dart';
import 'package:flutter_modular_br/app/splash/splash_page.dart';

class AppModular extends Module {
  // Dependencias
  @override
  List<Bind<Object>> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute('/categoria', module: CategoriaModule()),
        ModuleRoute('/produto', module: ProdutoModule())
      ];
}
