import 'package:flutter/material.dart';
import 'package:flutter_components_1/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageSource;

  const CustomCardType2({super.key, required this.imageSource});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            image: NetworkImage(imageSource),
            placeholder: const AssetImage('assets/icegif-1264.gif'),
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Eren Jaeger'),
          )
        ],
      ),
    );
  }
}
