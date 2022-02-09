import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenusModel {
  String name;
  IconData icon;

  MenusModel({required this.name, required this.icon});

  static List<MenusModel> topMenus() {
    return [
      MenusModel(name: "Dasboard", icon: Icons.dashboard),
      MenusModel(name: "Eventos", icon: Icons.list_alt_rounded),
      MenusModel(name: "Convites", icon: Icons.book_online),
      MenusModel(name: "Agenda", icon: Icons.calendar_today_outlined),
      MenusModel(name: "Eventos Salvos", icon: Icons.inbox_outlined),
      MenusModel(name: "Serviços", icon: Icons.cloud_circle),
    ];
  }
}
