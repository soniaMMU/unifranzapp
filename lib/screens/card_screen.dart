import 'package:flutter/material.dart';
import 'package:unifranz/widget/custom_tarjeta_1.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen - Widget'),
        backgroundColor: Colors.deepOrangeAccent[300],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomTarjeta1(),
          CustomTarjeta1(),
          // Puedes agregar más tarjetas según necesites
        ],
      ),
    );
  }
}
