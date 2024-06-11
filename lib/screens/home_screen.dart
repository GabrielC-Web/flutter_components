import 'package:flutter/material.dart';
import 'package:flutter_components_1/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text('Nombre de ruta'),
                  leading: const Icon(Icons.access_time_filled_outlined),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen());

                    Navigator.push(context, route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10));
  }
}
