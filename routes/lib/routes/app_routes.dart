import 'package:flutter/material.dart' show BuildContext, MaterialPageRoute, Route, RouteSettings, Widget;

import '../screens/screens.dart';


class AppRoutes {
  static const initialRoute = 'homescreen';
  
  static Map<String, Widget Function(BuildContext)> routes = {
    'homescreen': (context) => const HomeScreen(),
    'listscreen': (context) => ListScreen(),
    'alertscreen': (context) => const AlertScreen(),
    'cardscreen': (context) => const CardScreen(),
    'formscreen': (context) => const FormScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) { 
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}