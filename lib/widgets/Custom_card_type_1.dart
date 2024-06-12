import 'package:flutter/material.dart';
import 'package:flutter_components_1/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.phone_android_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un título'),
            subtitle: Text(
                'Occaecat cillum dolor in minim cupidatat pariatur in elit non fugiat et. Cupidatat eu mollit quis eu officia excepteur ut nisi nostrud labore ex laboris. Pariatur nisi non eu consequat et do pariatur amet. Non excepteur pariatur incididunt reprehenderit aliqua in. In duis ut occaecat adipisicing id cillum reprehenderit ea occaecat ad consectetur irure consectetur.'),
          )
        ],
      ),
    );
  }
}
