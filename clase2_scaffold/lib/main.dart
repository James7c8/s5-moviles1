import 'package:clase2_scaffold/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatelessWidget { // 1.
  const Contador({super.key});

  @override
  Widget build(BuildContext context) { // 2.
    // Recuerda, aquí llamamos un constructor así que no hace falta un 'new'.
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introduccion a Flutter',
      home: MainScreen(), // 3.
    );
  }
}


/*
1. 'StatelessWidget' es un widget que describe parte de la interfaz que no
   cambie de manera dynamica.

2. Todos los widgets tienen el método build(), y el método retorna un Widget.
   Recuerda que todas las cosas en la pantalla son widgets en Flutter. En este
   caso, el build() del widget Contador retorna un widget MaterialApp.

3. 'home' dice a Flutter que esto es el widget principal que se muestra primero
   cuando se ejecuta la aplicación.
*/