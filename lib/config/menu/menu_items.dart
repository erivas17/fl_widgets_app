import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subTittle;
  final String url;
  final IconData icon;

  const MenuItem(
      {required this.tittle,
      required this.subTittle,
      required this.url,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      tittle: 'Botones',
      subTittle: 'Varios botones en fluter',
      url: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      tittle: 'Tarjetas',
      subTittle: 'Contenedor estilizado',
      url: '/card',
      icon: Icons.credit_card),
];
