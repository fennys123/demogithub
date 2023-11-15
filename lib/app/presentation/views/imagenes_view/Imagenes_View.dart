import 'package:flutter/material.dart';
class Imagenes_View extends StatelessWidget {
  const Imagenes_View({super.key});

  static const String name = 'Imagenes_View';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('imagen con url interna'),
Image(image: NetworkImage('https://picsum.photos/250?image=9')),
          Text("imagen con url externa"),
          Image(image: AssetImage('assets/images/isla.jpg')),
        ],
      ),
    );
  }
}
