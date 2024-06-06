import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const ['Lizzie', 'Wiley', 'Jesus', 'Celeste', 'Mathilde'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map((e) => Column(
                  children: [
                    ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_outlined),
                    ),
                    const Divider()
                  ],
                ))
          ],
        ));
  }
}
