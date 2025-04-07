import 'package:flutter/material.dart';
import 'package:unifranz/router/app_route.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoute.menuOptions; // Lista de opciones del menú
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal Ingenieria de Sistemas'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final menuOption = menuOptions[index]; // Accede al elemento actual
          return ListTile(
            leading: Icon(menuOption.icon), // Usa el ícono del menú
            title: Text(menuOption.name), // Usa el nombre del menú
            onTap: () {
              // Muestra un diálogo con la información del menú
              showDialog(
                context: context,
                builder:
                    (context) => AlertDialog(
                      title: Text(menuOption.name),
                      content: Text('Ruta: ${menuOption.route}'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cerrar'),
                        ),
                      ],
                    ),
              );
            },
          );
        },
        separatorBuilder: (_, __) => Divider(),
        itemCount: menuOptions.length, // Número de elementos en el menú
      ),
    );
  }
}
