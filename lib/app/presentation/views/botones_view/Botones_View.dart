import 'package:flutter/material.dart';
class BotonesView extends StatelessWidget {
  const BotonesView({super.key});

  static const String name = 'botones_view';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Botones'),
            ElevatedButton(
              onPressed: () {
                print('Botón presionado');
              },
              child: const Text('ElevatedButton'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('ElevatedButton'),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () {
              },
              child: const Text('tercerButton'),
            ),
          ],
        ),
      ),
    );
  }
}