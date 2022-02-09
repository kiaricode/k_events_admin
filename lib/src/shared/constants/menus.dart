import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menus {
  String name;
  IconData icon;

  Menus({required this.name, required this.icon});

  static List<Menus> topMenus() {
    return [
      Menus(name: "Dasboard", icon: Icons.dashboard),
      Menus(name: "Eventos", icon: Icons.dashboard),
      Menus(name: "Convites", icon: Icons.dashboard),
      Menus(name: "Agenda", icon: Icons.dashboard),
      Menus(name: "Eventos Salvos", icon: Icons.dashboard),
      Menus(name: "Serviços", icon: Icons.dashboard),
    ];
  }
}
