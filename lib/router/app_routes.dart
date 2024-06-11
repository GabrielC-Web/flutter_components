import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alet': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic>? onGenerateRoutes(RouteSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
