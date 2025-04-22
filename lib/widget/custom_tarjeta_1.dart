import 'package:flutter/material.dart';
import 'package:unifranz/theme/app_theme.dart';

class CustomTarjeta1 extends StatelessWidget {
  const CustomTarjeta1({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.isDarkTheme,
      builder: (context, isDark, _) {
        final themeColor = isDark ? Colors.purple : Colors.deepOrangeAccent;
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.credit_card, color: themeColor),
                title: const Text('Tarjeta 1'),
                subtitle: const Text('In labore culpa elit deserunt incididunt.'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Cancelar', style: TextStyle(color: themeColor)),
                    ),
                    TextButton(
                      onPressed: () {}, 
                      child: Text('Enviar', style: TextStyle(color: themeColor)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}