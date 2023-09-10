import 'package:routes/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Componentes());

class Componentes extends StatelessWidget {
  const Componentes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListScreen(), ... home is not needed if we use initialRoute.
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      onGenerateRoute: AppRoutes.onGenerateRoute, // This is the same as the above commented line.
      theme: ThemeData.dark(),
    );
  }
}