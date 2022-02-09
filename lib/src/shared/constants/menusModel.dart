import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenusModel {
  String name;
  IconData icon;

  MenusModel({required this.name, required this.icon});

  static List<MenusModel> topMenus() {
    return [
      MenusModel(name: "Dasboard", icon: Icons.dashboard),
      MenusModel(name: "Eventos", icon: Icons.list),
      MenusModel(name: "Convites", icon: Icons.inbox_outlined),
      MenusModel(name: "Agenda", icon: Icons.calendar_month_rounded),
      MenusModel(name: "Eventos Salvos", icon: Icons.gif_box_outlined),
      MenusModel(name: "Serviços", icon: Icons.cloud_circle_outlined),
    ];
  }
}
