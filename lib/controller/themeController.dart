import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  ThemeData _themeData;

  ThemeController(this._themeData);

  ThemeData getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  static ThemeData lightTheme = ThemeData();

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: DarkColorData.primary,
    accentColor: DarkColorData.accent,
    backgroundColor: DarkColorData.bg1,
    bottomAppBarColor: DarkColorData.bg2, // this serves as the second background color
    buttonColor: DarkColorData.red,
    cardColor: DarkColorData.card,
    dividerColor: DarkColorData.divider,
  );
}

class DarkColorData {
  static const Color primary = Color(0xffffffff);
  static const Color accent = Color(0xff536068);
  static const Color bg1 = Color(0xff091c27);
  static const Color bg2 = Color(0xff041017);
  static const Color card = Color(0xff0f2430);
  static const Color divider = Color(0xff1f303a);
  static const Color red = Color(0xffee5651);
//
}
