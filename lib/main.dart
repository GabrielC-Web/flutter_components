import 'package:flutter/material.dart';
import 'package:flutter_components_1/router/app_routes.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: (settings) {
        print(settings);
        AppRoutes.onGenerateRoutes(settings);
      },
    );
  }
}
