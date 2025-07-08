import 'package:flutter/material.dart';

class DrawerViewModel extends ChangeNotifier {
  //se maneja el estado del drawer

  String _selected = 'Home';
  //getter publico -- permite acceder al valor actual de _selected
  String get selected => _selected;
  //metodo, cambiar la pagina seleccionada
  void select(String page) {
    _selected = page;
    notifyListeners(); //notifica a los widgets que se deben reconstruir y que el estado ha cambiado
  }
}
