import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de CardScreen'),
      ),
      body: const Center(
         child: Text('CardScreen'),
      ),
    );
  }
}