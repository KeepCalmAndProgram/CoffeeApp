import 'package:coffee_app/common/theme.dart';
import 'package:coffee_app/router/router.dart';
import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee App",
      theme: coffeeAppTheme,
      routes: routes,
    );
  }
}