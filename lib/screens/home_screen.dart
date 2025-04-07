import 'package:flutter/material.dart';

class HomeScreem extends StatelessWidget {
  final options = [
    'Noticias y Actualidad',
    'Biblioteca Central',
    'Informaciones',
    'Pensum',
    'Repositorios',
    'Foros',
  ];
  final List<String> imageList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];
  HomeScreem({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal Ingenieria de Sistemas"),
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.airline_stops_outlined),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Image.asset(imageList[index], fit: BoxFit.cover);
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(options[index]),
                  leading: Icon(Icons.book),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Seleccionaste: ${options[index]}'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: options.length,
            ),
          ),
        ],
      ),
    );
  }
}
