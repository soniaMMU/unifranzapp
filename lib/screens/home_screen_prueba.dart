import 'package:flutter/material.dart';
import 'package:unifranz/router/app_route.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoute.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal Ingenieria de Sistemasss'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final menuOption = menuOptions[index];
          return ListTile(
            leading: Icon(menuOption.icon),
            title: Text(menuOption.name),
            onTap: () {
              Navigator.pushNamed(context, menuOption.route);
            },
          );
        },
        separatorBuilder: (_, __) => Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
