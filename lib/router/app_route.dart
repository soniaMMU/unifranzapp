import 'package:flutter/material.dart';
import 'package:unifranz/models/menu_options.dart';
import 'package:unifranz/screens/card_screen.dart';

import '../screens/alert_screen.dart';
import '../screens/screen.dart';

class AppRoute {
  static const initialRoute = 'HomeMar';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: 'Biblioteca',
      icon: Icons.library_books,
      name: 'Biblioteca',
      screen: const BibiotecaScreen(),
    ),
    MenuOptions(
      route: 'Foros',
      icon: Icons.forum,
      name: 'Foros',
      screen: const ForoScreen(),
    ),
    MenuOptions(
      route: 'Informacion',
      icon: Icons.info,
      name: 'Informacion',
      screen: const InformacionScreen(),
    ),
    MenuOptions(
      route: 'Pensum',
      icon: Icons.menu_book,
      name: 'Pensum',
      screen: const PensumScreen(),
    ),
    MenuOptions(
      route: 'Repositorio',
      icon: Icons.folder_open,
      name: 'Repositorio',
      screen: const RepositorioScreen(),
    ),
    MenuOptions(
      route: 'Noticias',
      icon: Icons.newspaper,
      name: 'Noticias',
      screen: const NoticiaScreen(),
    ),
    MenuOptions(
      route: 'Card',
      icon: Icons.card_giftcard,
      name: 'Card',
      screen: CardScreen(),
    ),
  ];

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'Biblioteca': (BuildContext context) => const BibiotecaScreen(),
    'Foros': (BuildContext context) => const ForoScreen(),
    'Informacion': (BuildContext context) => const InformacionScreen(),
    'Pensum': (BuildContext context) => const PensumScreen(),
    'Repositorio': (BuildContext context) => const RepositorioScreen(),
    'Noticias': (BuildContext context) => const NoticiaScreen(),
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

class Push {}
