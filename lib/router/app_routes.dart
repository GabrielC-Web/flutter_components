import 'package:flutter/material.dart';
import 'package:flutter_components_1/models/menu_option.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.home,
        name: 'Lista 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.home,
        name: 'Lista 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.home,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'alet',
        icon: Icons.home,
        name: 'Alert',
        screen: const AlertScreen()),
  ];

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
