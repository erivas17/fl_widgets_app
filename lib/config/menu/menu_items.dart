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
      url: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      tittle: 'Progress Indicators',
      subTittle: 'Generales y controlados',
      url: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      tittle: 'Snackbars y diálogos',
      subTittle: 'Indicadores de pantalla',
      url: '/snackbars',
      icon: Icons.info_outline),
];
