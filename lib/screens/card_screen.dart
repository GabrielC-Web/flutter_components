import 'package:flutter/material.dart';
import 'package:flutter_components_1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(),
          ],
        ));
  }
}
