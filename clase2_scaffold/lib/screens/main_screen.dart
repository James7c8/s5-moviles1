import 'package:flutter/material.dart';

// 1.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override // 2.
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextStyle textHeading = const TextStyle(
      fontSize: 38, fontWeight: FontWeight.bold, color: Colors.deepPurple);

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    // 3.
    return Scaffold(
      appBar: AppBar(
          title: const Text('Títulos de la App',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          elevation: 20,
          backgroundColor: Colors.limeAccent.shade400),
      body: Center(
        // 4.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenidos a Flutter!', style: textHeading),
            Text(
              '$contador',
              style: const TextStyle(fontSize: 50),
            ),
            const Icon(
              Icons.accessibility_new,
              size: 100,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.limeAccent.shade400,
            onPressed: () {
              setState(() {
                ++contador;
              });
            },
            child: const Icon(
              Icons.exposure_plus_1,
              size: 40,
              color: Colors.black,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.limeAccent.shade400,
            onPressed: () {
              setState(() {
                --contador;
              });
            },
            child: const Icon(
              Icons.exposure_minus_1,
              size: 40,
              color: Colors.black,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.limeAccent.shade400,
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
            child: const Icon(
              Icons.exposure_zero,
              size: 40,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


/*
1. StatefulWidget es un widget así que, como todos los widgets, es inmutable. 
   Una vez instanciado un widget no puede cambiar, y cuando se necesitan cambios
   se crea una nueva instancia del widget con las propiedades actualizadas.
   Pero, un StatefulWidget puede tener un State que sí es mutable. Este objeto
   State es seperado del widget, y es este que puede ser mutable y contener
   datos cambiantes.

2. Hay que override el método createState en todo StatefulWidget. Como 
   mencionado anteriorment, este método dice a Flutter cómo crear el estado
   mutable por ese widget. Aquí, _MainScreenState contendrá todos los datos
   mutables por el MainScreen widget. Cuando se cambien los datos y se
   actualice la interfaz se usará el método setState dentro de _MainScreenState.

3. El Scaffold widget (recuerda: TODO ES UN WIDGET) proporciona la estructura
   para las aplicaciones de material design. Asegura consitencia y simplifica el
   proceso de construir una app.

4. Child y Children refieren a la relación entre los widgets y el widget tree.
   Muchos widgets pueden incluir un solo widget dentro de ellos mismos. El 
   parent widget normalmente modifica o posiciona este child widget. 
   -----------------------------------------------------------------------------
    Center(
      child: Text('Estoy centrado!'),
    )
   -----------------------------------------------------------------------------
    Container(
      color: Colors.blue,
      child: Text('Estoy dentro de un contenedor'),
    )
   -----------------------------------------------------------------------------
   Otros widgets pueden incluir una lista de widgets como children. Significa
   que pueden contener multiiples widgets child adentro. 
   -----------------------------------------------------------------------------
   Column(
    children: [
       Text('Item 1'),
       Text('Item 2'),
       Text('Item 3'),
     ],
   )
   -----------------------------------------------------------------------------
   ListView(
     children: <Widget>[
       ListTile(title: Text('Item 1')),
       ListTile(title: Text('Item 2')),
       ListTile(title: Text('Item 3')),
     ],
   )
   -----------------------------------------------------------------------------


*/