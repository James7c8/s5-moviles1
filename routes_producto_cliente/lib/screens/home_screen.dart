import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final ButtonStyle customButton = const ButtonStyle(
  //   minimumSize: MaterialStateProperty.all(Size(200, 50)),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Tienda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a la Tienda',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'productoscreen');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(400, 60)),
              ),
              child: const Text('Productos'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'clientescreen');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(400, 60)),
              ),
              child: const Text('Clientes'),
            ),
            const SizedBox(height: 60),
            const Icon(
              Icons.shopping_cart_outlined,
              size: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
