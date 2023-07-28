import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/categoria/categoria_page.dart';
import 'package:flutter_modular_br/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_br/app/categoria/model/preco_model.dart';

class CategoriaModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind((i) => CategoriaController(), isLazy: false), função abaixo é a mesma funcionalidade que essa porém seguindo padrão clean code
        Bind.lazySingleton((i) => PrecoModel()),
        Bind.lazySingleton(
          (i) => CategoriaController(
            precoModel: i(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const CategoriaPage(),
        ),
      ];
}
