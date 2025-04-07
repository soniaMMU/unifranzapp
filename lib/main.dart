import 'package:flutter/material.dart';
import 'package:unifranz/router/app_route.dart';
import 'package:unifranz/screens/alert_screen.dart';
//import 'package:unifranz/screens/screens.dart';
import '../screens/screens.dart';

import 'package:unifranz/screens/biblioteca_screen.dart';

import 'package:unifranz/screens/foros_screen.dart';
import 'package:unifranz/screens/informacion_screen.dart';
import 'package:unifranz/screens/card_screen.dart';
import 'package:unifranz/screens/noticias_screen.dart';
import 'package:unifranz/screens/pensum_screen.dart';
import 'package:unifranz/screens/repositorios_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Material App',
      /*home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: const Center(child: Text('Hello World')),
      ),*/
      //initialRoute: 'homep',
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.getAppRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,

      /*routes: {
        'biblioteca': (BuildContext context) => BibiotecaScreen(),
        'informacion': (BuildContext context) => InformacionScreen(),
        'foros': (BuildContext context) => ForoScreen(),
        'pensum': (BuildContext context) => PensumScreen(),
        'repositorio': (BuildContext context) => RepositorioScreen(),
        'noticias': (BuildContext context) => NoticiaScreen(),
        'card': (BuildContext context) => CardScreen(),
      },*/

      /*
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) => AlertScreen());
      },*/
    );
  }
}
