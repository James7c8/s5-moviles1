import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final superheroes = ['Batman', 'Superman', 'Spider-Man', 'Wonder Woman', 'Thor', 'The Flash', 'Hulk', 'Black Widow'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('List View'),
         backgroundColor: Colors.amberAccent,
         elevation: 1,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
              leading: const Icon(Icons.ac_unit_sharp, color: Colors.amber,),
              title: Text(superheroes[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Superheroe... ${superheroes[index]}");
              },
          );
        }, 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: superheroes.length,
      ),
    );
  }
}

