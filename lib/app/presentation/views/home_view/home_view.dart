import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../botones_view/Botones_View.dart';
import '../iconos_view/Iconos_View.dart';
import '../imagenes_view/Imagenes_View.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String name = 'home_view';
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(Botones_View.name);
              },
              child: const Text('Botones'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(Iconos_View.name);
              },
              child: const Text('Iconos'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(Imagenes_View.name);
              }, child: const Text('Imagenes'),
        ), ElevatedButton(onPressed: (){}, child: const Text('HomeView')),
            Text('hola',style: Theme.of(context).textTheme.titleSmall,),
            Text('HOLA',style: Theme.of(context).textTheme.bodyLarge,),
            Text('hola',style: Theme.of(context).textTheme.bodyMedium,),
            Text('hola',style: Theme.of(context).textTheme.bodySmall,),
            
          ],
        ),
      ),
    );
  }
}

