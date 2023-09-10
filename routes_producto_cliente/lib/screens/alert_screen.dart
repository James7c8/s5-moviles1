import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de AlertScreen'),
      ),
      body: const Center(
         child: Text('AlertScreen'),
      ),
    );
  }
}