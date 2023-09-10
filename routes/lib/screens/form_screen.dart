import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de FormScreen'),
      ),
      body: const Center(
         child: Text('FormScreen'),
      ),
    );
  }
}