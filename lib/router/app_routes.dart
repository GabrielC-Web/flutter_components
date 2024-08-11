import 'package:flutter/material.dart';
import 'package:flutter_components_1/models/menu_option.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'Lista 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: 'Lista 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'alet',
        icon: Icons.warning_outlined,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_fill_rounded,
        name: 'Animated Screen',
        screen: AnimatedScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoutes(RouteSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
