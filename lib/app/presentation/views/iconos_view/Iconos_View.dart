import 'package:flutter/material.dart';

class Iconos_View extends StatelessWidget {
  const Iconos_View({super.key});
  static const String name = 'Iconos_View';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Icon(Icons.account_circle, color: Colors.blue, size: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nombre'),
                    SizedBox(width: 20.0),
                    Text('Apellido'),
                    Image(image: AssetImage('assets/images/isla.jpg')),
                  ])
            ],
          ),
        ));
  }
}
