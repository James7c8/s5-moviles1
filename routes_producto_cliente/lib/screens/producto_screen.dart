import 'package:flutter/material.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de ProductoScreen'),
      ),
      body: const Center(
         child: Text('ProductoScreen'),
      ),
    );
  }
}