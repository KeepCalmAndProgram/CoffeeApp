import 'package:coffee_app/common/theme.dart';
import 'package:coffee_app/features/screens/home_screen.dart';
import 'package:coffee_app/router/router.dart';
import 'package:flutter/material.dart';

import 'features/rewards/screen/rewards_screen.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rewards demo",
      theme: coffeeAppTheme,
      home: HomeScreen(),
    );
    /*return MaterialApp(
      title: "Coffee App",
      theme: coffeeAppTheme,
      routes: routes,
    );*/
  }
}