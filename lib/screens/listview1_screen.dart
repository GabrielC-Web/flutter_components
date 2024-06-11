import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const ['Lizzie', 'Wiley', 'Jesus', 'Celeste', 'Mathilde'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 1'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
