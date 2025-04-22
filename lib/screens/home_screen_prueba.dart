import 'package:flutter/material.dart';
import 'package:unifranz/router/app_route.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoute.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal Ingenieria de Sistemas'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          title: Text(menuOptions[i].name),
          leading: Icon(menuOptions[i].icon),
          onTap: () => Navigator.pushNamed(context, menuOptions[i].route),
        ),
      ),
    );
  }
}
