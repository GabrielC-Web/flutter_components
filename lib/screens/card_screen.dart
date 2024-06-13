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
            CustomCardType2(
              imageSource:
                  'https://cdn.alfabetajuega.com/alfabetajuega/2020/10/eren-jaeger.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageSource:
                  'https://images.pexels.com/photos/1107717/pexels-photo-1107717.jpeg?cs=srgb&dl=pexels-fotios-photos-1107717.jpg&fm=jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageSource:
                  'https://switzerland-tour.com/storage/media/4-ForArticles/swiss-mountains.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageSource: 'https://images.alphacoders.com/134/1341414.png',
            ),
          ],
        ));
  }
}
