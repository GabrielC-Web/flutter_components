import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: const CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text('SL'),
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-q2410NfMnZ17U2axBB29mwaqqYDSc69OCw&s'),
          ),
        ));
  }
}
