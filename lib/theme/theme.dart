import 'package:flutter/material.dart';
import 'package:gita_gitroops/theme/color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

class GitroopsTheme {
  static ThemeData mainTheme() {
    return applyAllStyles(
      ThemeData.from(colorScheme: GitroopsColorScheme.lightColorScheme),
    );
  }

  static ThemeData applyAllStyles(
    ThemeData themeData,
  ) {
    return themeData.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(),
      scaffoldBackgroundColor: themeData.colorScheme.background,
    );
  }
}
