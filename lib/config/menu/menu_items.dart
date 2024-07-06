import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem ({
   required this.title,
   required this.subTitle,
   required this.link, 
   required this.icon
  }); 
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

   MenuItem(
    title: 'tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'SnackBars y diálogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/uicontrols',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'pequeño tutorial introductorio',
    link: '/apptutorial',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'InfiniteScroll y Pull',
    subTitle: 'Listas infinitas y pull refresh',
    link: '/infinitescroll',
    icon: Icons.credit_card
  ),

];