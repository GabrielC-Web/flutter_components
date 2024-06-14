import 'package:flutter/material.dart';
import 'package:flutter_components_1/router/app_routes.dart';
import 'package:flutter_components_1/screens/listview1_screen.dart';
import 'package:flutter_components_1/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Componentes en Flutter')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions[index].name),
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: (context) =>
                            AppRoutes.menuOptions[index].screen);

                    Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
