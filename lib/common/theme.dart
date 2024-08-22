import 'package:flutter/material.dart';

import 'colors.dart';

final coffeeAppTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: _colorScheme,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    headline4: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: CoffeeAppColor.primary,
  onPrimary: CoffeeAppColor.onPrimary,
  onSecondary: CoffeeAppColor.onSecondary,
  error: CoffeeAppColor.error,
  background: CoffeeAppColor.background,
  secondary: CoffeeAppColor.secondary,
  onError: CoffeeAppColor.onError,
  onBackground: CoffeeAppColor.onBackground,
  surface: CoffeeAppColor.onSurface,
  onSurface: CoffeeAppColor.onSurface,
);
