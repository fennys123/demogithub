import 'package:flutter/material.dart';

class Fila_View extends StatelessWidget {
  const Fila_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('Imagen de Icono '),
            Icon(Icons.add),
            Text('Imagen de Icono '),
            Icon(Icons.help_outline),
            Text('Imagen de Icono '),
            Icon(Icons.account_circle,
            color: Colors.blue, size: 20),
          ],
        ),
      ),
    );
  }
}
