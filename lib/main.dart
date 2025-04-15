import 'package:flutter/material.dart';
import 'package:unifranz/router/app_route.dart';
import 'package:unifranz/screens/home_screen_prueba.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portal Ingenieria',
      home: const HomeScreenP(), // Set the HomeScreenP as the initial screen
      routes: AppRoute.getAppRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
