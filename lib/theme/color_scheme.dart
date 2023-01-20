import 'package:flutter/material.dart';
import 'package:gita_gitroops/theme/colors.dart';

class GitroopsColorScheme {
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: GitroopsColors.blue,
    onPrimary: Colors.white,
    secondary: GitroopsColors.gold,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Color(0xFFF7F3F3),
    onBackground: Colors.black,
    surface: GitroopsColors.grey,
    onSurface: Colors.grey,
  );
}

extension QuizzAppColorSchemeExtension on ColorScheme {
  Color get green => Colors.green;

  Color get red => Colors.red;
}
