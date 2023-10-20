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
  MenuItem(
      tittle: 'Animated container',
      subTittle: 'Statful widget animado',
      url: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      tittle: 'UI Controls + Tiles',
      subTittle: 'Una serie de controles de Flutter',
      url: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      tittle: 'Introducción a la aplicación',
      subTittle: 'Pequeño tutorial introductorio',
      url: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      tittle: 'Infinite Scroll y Pull',
      subTittle: 'Listas infinitas y pull to refresh',
      url: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      tittle: 'Riverpod Counter',
      subTittle: 'Ejemplo con Riverpod',
      url: '/counter',
      icon: Icons.construction),
  MenuItem(
      tittle: 'Cambiar Tema',
      subTittle: 'Cambiar tema de la aplicación',
      url: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
