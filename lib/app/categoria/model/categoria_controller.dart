
import 'package:flutter_modular_br/app/categoria/model/preco_model.dart';

class CategoriaController {

  PrecoModel precoModel;

  CategoriaController(
    {
      required this.precoModel
    }
  ){
    print('Categoria controller $hashCode');
  }

  int teste(){
    return hashCode;
  }
}