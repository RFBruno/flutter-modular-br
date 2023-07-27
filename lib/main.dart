import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_br/app/app_modular.dart';
import 'package:flutter_modular_br/app/app_widget.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModular(),
      child: AppWidget(),
    ),
  );
}
