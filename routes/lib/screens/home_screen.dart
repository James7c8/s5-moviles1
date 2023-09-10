import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Título de HomeScreen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.account_balance_outlined),
          title: const Text("Componente Flutter"),
          onTap: () {
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ListScreen()), (route) => false);
            Navigator.pushNamed(context, 'listscreen');
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: 12,
      ),
    );
  }
}