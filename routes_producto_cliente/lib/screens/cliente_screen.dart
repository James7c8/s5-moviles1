import 'package:flutter/material.dart';

class ClienteScreen extends StatelessWidget {
  const ClienteScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de ClienteScreen'),
      ),
      body: const Center(
         child: Text('ClienteScreen'),
      ),
    );
  }
}