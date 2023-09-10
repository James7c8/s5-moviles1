import 'package:flutter/material.dart';
import 'package:routes_producto_cliente/routes/app_routes.dart';

void main() => runApp(const Tienda());

class Tienda extends StatelessWidget {
  const Tienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tienda App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light(),
    );
  }
}
