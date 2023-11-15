import 'package:flutter/material.dart';

class texto1_view extends StatelessWidget {
  const texto1_view({super.key});
  static const String name = 'texto1';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'Los temas y los estilos tienen muchas similitudes, pero se usan para diferentes propósitos. Ambos tienen la misma estructura básica: un par clave-valor que asigna atributos a recursos.',
                        textAlign: TextAlign.center,
                      ),
                      FlutterLogo(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Flexible(
                  child: Text(
                    'Los temas y los estilos tienen muchas similitudes, pero se usan para diferentes propósitos. Ambos tienen la misma estructura básica: un par clave-valor que asigna atributos a recursos.',
                    textAlign: TextAlign.center,
                  ),
                ),
                FlutterLogo(),
              ],
            ),
            SizedBox(width: 100),
          ],
        ),
      ),
    );
  }
}

